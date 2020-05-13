/************************************************************************

    TAPTOOLS v1.0.4 - Tapefile manipulation utilities

    Copyright (C) 1996, 2005, 2009  John Elliott <jce@seasip.demon.co.uk>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

*************************************************************************/

#include	<stdio.h>
#include	<string.h>
#include	<stdlib.h>
#include "config.h"
#ifdef HAVE_STAT_H
#include	<stat.h>
#endif
#ifdef HAVE_SYS_STAT_H
#include	<sys/stat.h>
#endif
#include	"taputil.h"

byte header1[128], header2[128];
int zxtflag = 0;
int noheader = 0;
long taplen;
unsigned int nStartAddr = 0;

#ifdef __PACIFIC__
#define AV0 "TAPCAT"
#else
#define AV0 argv[0]
#endif



void addblk(FILE *f, char *name)
{
	byte header[21];
	unsigned int zxlen;	/* File length from the Spectrum's point of view */
	int p3off;
	int isp3;
	FILE *fp;

	byte *to;
	char *from;

	unsigned int n,m;
	
	header[0] = 19;		/* 19 bytes, a header */
	header[1] = 0;		/* High byte of block size */
	header[2] = 0;		/* 0, for a header */

	p3off = 0;
	
	fseek(f,taplen,0);	/* Seek to correct point for block append */

	isp3 = is3dos(name, header2);
	if (isp3 == -1)
	{
#ifdef CPM		/* HiTech C for CP/M has an appalling perror() */
		fprintf(stderr,"Couldn't open %s\n",name);
#else
		perror(name);
#endif
		return;
	}	
	if (isp3)  /* +3DOS, convert the header */
	{
		header[3]  = header2[15];	/* Type */
		header[14] = header2[16];	/* Length */
		header[15] = header2[17];
		header[16] = header2[18];	/* Load addr */
		header[17] = header2[19];
		header[18] = header2[20];	/* Prog len */
		header[19] = header2[21];

		zxlen = header2[16] + (header2[17] << 8);

		p3off = 128;
	}
	else
	{
		struct stat st;

		if (stat(name, &st))	
		{
#ifdef CPM			/* HiTech C for CP/M has an appalling perror() */
			fprintf(stderr,"Couldn't stat %s\n",name);
#else
			perror(name);
#endif
			return;
		}
		header[3]  = 3; /* CODE */

		if (st.st_size >= 65533) zxlen = 65533; 
		else 				     zxlen = st.st_size & 0xFFFF;
		
		header[14] = zxlen & 0xFF;
		header[15] = zxlen >> 8; 

		header[16] = nStartAddr & 0xFF;
		header[17] = (nStartAddr >> 8) & 0xFF; /* Load address */
		
	}
	to=&header[4];
	from=name;

	for (n=0; n<10; n++)
	{
		*to = *from;
		if (!(*from)) /* End of string */
			*to = ' ';		
		else
			from++;
		to++;
	}

	if (!(fp=fopen(name,"rb")))
	{
		fprintf(stderr,"Failed to open %s.\n",name);
		return;
	}
	
	
	for (m=0,n=2;n<20;n++) m^=header[n];

	header[20] = m & 0xFF; /* Header block generated & checksummed */

	if (!noheader)
	{
		if (fwrite(header,1,21,f) < 21)
		{
			fprintf(stderr,"Header write failed for %s.\n",name);
			fclose(fp);
			return;
		}
		taplen += 21;
	}

/* Header written, do the data */

	if (fputc((zxlen + 2) & 0xFF, f) == EOF   /* Length, low byte */
	||  fputc((zxlen + 2) >> 8,   f) == EOF   /* Length, high byte */
	||  fputc(0xFF,               f) == EOF)  /* Block type (0FFh for data) */
	{
		fprintf(stderr,"Write fail while copying %s.\n",name);
		fclose(fp);
		return;
	}
	fseek(fp, p3off, 0L);
	
	m=0xFF;

	for (n=0; n<zxlen; n++)
	{
		int c;

		c = fgetc(fp);

		if (c == EOF)
		{
			fprintf(stderr,"Unexpected End-Of-File or error on file %s.",name);
			fclose(fp);
			return;
		}

		m ^= c;

		if (fputc(c,f) == EOF)
		{
			fprintf(stderr,"Write fail while copying %s.\n",name);
			fclose(fp);
			return;
		}

	}
	if (fputc(m & 0xFF,f) == EOF)
	{
		fprintf(stderr,"Write fail while copying %s.\n",name);
		fclose(fp);
		return;
	}	
	fclose(fp);
	taplen += (long)zxlen + 4L;
}


void help(char *name)
{
	fprintf(stderr,"Syntax: %s { -N } { -H } { -a addr } tapfile member member ... \n", name);
	exit(1);
}


int main(int argc, char **argv)
{
	FILE *tapfile;
	char *tname;
	int argno;
	int removing = 0;

	argno = 1;

	while ((argno < argc) && (argv[argno][0] == '-'))
	{
		if (argv[argno][1] == 'N')
		{
			removing = 1;
			++argno;
		}
		else if (argv[argno][1] == 'H')
		{
			noheader = 1;
			++argno;
		}
		else if (argv[argno][1] == 'a')
		{
			++argno;
			if (argno < argc)
			{
				nStartAddr = atoi(argv[argno]);
				++argno;
			}
		}
		else
		{
			help(AV0);
		}
	}

	if ((argno + 1) >= argc)
	{
		help(AV0);
	}

	tname=argv[argno++];

	if (removing)
	{
		remove(tname); /* Remove the .TAP file if it exists */
		if (!(tapfile=fopen(tname,"wb")))
		{
			fprintf(stderr,"Failed to create %s\n",tname);
			exit(1);
		} 
		fclose(tapfile);
	}
	
	/* Open TAP / ZXT file */
	tapfile = opentap(tname, "r+b", &zxtflag, &taplen);
	/* Start appending the blocks */
	while (argv[argno])
	{
		addblk(tapfile, argv[argno]);
		fprintf(stdout,"File %s appended OK\n",argv[argno++]);
	}
	if (zxtflag)  /* Update +3DOS header if a .ZXT file */
	{
		int m,n;
		if (fseek(tapfile, 0L, SEEK_SET) ||
		    fread(header1, 1, 128, tapfile) < 128)	
		{
			fprintf(stderr,"Failed to reread .ZXT header\n");
			fclose(tapfile);
			exit(3);
		}

		header1[11] =  taplen        & 0xFF;
		header1[12] = (taplen >> 8)  & 0xFF;
		header1[13] = (taplen >> 16) & 0xFF;
		header1[14] = (taplen >> 24) & 0xFF;

		for (n=m=0; m<127;m++) n+=header1[m];

		header1[127] = m & 0xFF;

		if (fseek(tapfile, 0L, SEEK_SET) ||
		    fwrite(header1,1,128,tapfile) < 128)
		{
			fprintf(stderr,"Failed to write .ZXT header\n");
			fclose(tapfile);
			exit(3);
		}
	}
	if (fclose(tapfile))
	{
		fprintf(stderr, "Failed to close %s\n", tname);
		return 3;
	}
	return 0;
}

