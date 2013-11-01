# Generated automatically from Makefile.in by configure.
# Makefile.in generated automatically by automake 1.4-p6 from Makefile.am

# Copyright (C) 1994, 1995-8, 1999, 2001 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.


SHELL = sh

srcdir = .
top_srcdir = .
prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include

DESTDIR =

pkgdatadir = $(datadir)/taptools
pkglibdir = $(libdir)/taptools
pkgincludedir = $(includedir)/taptools

top_builddir = .

ACLOCAL = aclocal-1.4
AUTOCONF = autoconf
AUTOMAKE = U:/progetti/taptools-1.0.4/missing automake-1.4
AUTOHEADER = U:/progetti/taptools-1.0.4/missing autoheader

INSTALL = /bin/install.exe
INSTALL_PROGRAM = ${INSTALL} $(AM_INSTALL_PROGRAM_FLAGS)
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL_PROGRAM}
transform = s,x,x,

NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_alias = i386-pc-os2-emx
host_triplet = i386-pc-os2-emx
CC = gcc
EXEEXT = .exe
HAVE_LIB = @HAVE_LIB@
LIB = @LIB@
LN_S = ln -s
LTLIB = @LTLIB@
MAKEINFO = makeinfo
PACKAGE = taptools
VERSION = 1.0.4

bin_PROGRAMS = specform tapcat tapget tapsplit unspecform tapls tap2dsk mkp3fs 	     bin2bas sna2tap

EXTRA_DIST = README COPYING INSTALL ChangeLog dualdos.reg 

specform_SOURCES = specform.c
unspecform_SOURCES = unspecfm.c cnvshell.c cnvshell.h
sna2tap_SOURCES = sna2tap.c cnvshell.c cnvshell.h
tapcat_SOURCES = tapcat.c taputil.c taputil.h
tapget_SOURCES = tapget.c taputil.c taputil.h
tapsplit_SOURCES = tapsplit.c taputil.c taputil.h
tapls_SOURCES = tapls.c taputil.c taputil.h
tap2dsk_SOURCES = tap2dsk.c dskbits.c dskbits.h plus3fs.c plus3fs.h 		taputil.c taputil.h

mkp3fs_SOURCES = mkp3fs.c dskbits.c dskbits.h plus3fs.c plus3fs.h
bin2bas_SOURCES = bin2bas.c cnvshell.c cnvshell.h
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES = 
bin_PROGRAMS =  specform$(EXEEXT) tapcat$(EXEEXT) tapget$(EXEEXT) \
tapsplit$(EXEEXT) unspecform$(EXEEXT) tapls$(EXEEXT) tap2dsk$(EXEEXT) \
mkp3fs$(EXEEXT) bin2bas$(EXEEXT) sna2tap$(EXEEXT)
PROGRAMS =  $(bin_PROGRAMS)


DEFS = -DHAVE_CONFIG_H -I. -I$(srcdir) -I.
CPPFLAGS = 
LDFLAGS = -Zexe -Zomf -Zmap -Zargs-wild -Zbin-files -D__ST_MT_ERRNO__ -s
LIBS = -lz 
specform_OBJECTS =  specform.o
specform_LDADD = $(LDADD)
specform_DEPENDENCIES = 
specform_LDFLAGS = 
tapcat_OBJECTS =  tapcat.o taputil.o
tapcat_LDADD = $(LDADD)
tapcat_DEPENDENCIES = 
tapcat_LDFLAGS = 
tapget_OBJECTS =  tapget.o taputil.o
tapget_LDADD = $(LDADD)
tapget_DEPENDENCIES = 
tapget_LDFLAGS = 
tapsplit_OBJECTS =  tapsplit.o taputil.o
tapsplit_LDADD = $(LDADD)
tapsplit_DEPENDENCIES = 
tapsplit_LDFLAGS = 
unspecform_OBJECTS =  unspecfm.o cnvshell.o
unspecform_LDADD = $(LDADD)
unspecform_DEPENDENCIES = 
unspecform_LDFLAGS = 
tapls_OBJECTS =  tapls.o taputil.o
tapls_LDADD = $(LDADD)
tapls_DEPENDENCIES = 
tapls_LDFLAGS = 
tap2dsk_OBJECTS =  tap2dsk.o dskbits.o plus3fs.o taputil.o
tap2dsk_LDADD = $(LDADD)
tap2dsk_DEPENDENCIES = 
tap2dsk_LDFLAGS = 
mkp3fs_OBJECTS =  mkp3fs.o dskbits.o plus3fs.o
mkp3fs_LDADD = $(LDADD)
mkp3fs_DEPENDENCIES = 
mkp3fs_LDFLAGS = 
bin2bas_OBJECTS =  bin2bas.o cnvshell.o
bin2bas_LDADD = $(LDADD)
bin2bas_DEPENDENCIES = 
bin2bas_LDFLAGS = 
sna2tap_OBJECTS =  sna2tap.o cnvshell.o
sna2tap_LDADD = $(LDADD)
sna2tap_DEPENDENCIES = 
sna2tap_LDFLAGS = 
CFLAGS = -D__EMX__ -Dunix  -D__ST_MT_ERRNO__ -O3 -march=pentium3
COMPILE = $(CC) $(DEFS) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@
DIST_COMMON =  README ./stamp-h.in COPYING ChangeLog INSTALL Makefile.am \
Makefile.in TODO aclocal.m4 config.guess config.h.in config.sub \
configure configure.in install-sh missing mkinstalldirs


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = gtar
GZIP_ENV = --best
SOURCES = $(specform_SOURCES) $(tapcat_SOURCES) $(tapget_SOURCES) $(tapsplit_SOURCES) $(unspecform_SOURCES) $(tapls_SOURCES) $(tap2dsk_SOURCES) $(mkp3fs_SOURCES) $(bin2bas_SOURCES) $(sna2tap_SOURCES)
OBJECTS = $(specform_OBJECTS) $(tapcat_OBJECTS) $(tapget_OBJECTS) $(tapsplit_OBJECTS) $(unspecform_OBJECTS) $(tapls_OBJECTS) $(tap2dsk_OBJECTS) $(mkp3fs_OBJECTS) $(bin2bas_OBJECTS) $(sna2tap_OBJECTS)

all: all-redirect
.SUFFIXES:
.SUFFIXES: .S .c .o .s
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --foreign --include-deps Makefile

Makefile: $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES=$@ CONFIG_HEADERS= $(SHELL) ./config.status

$(ACLOCAL_M4):  configure.in 
	cd $(srcdir) && $(ACLOCAL)

config.status: $(srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck
$(srcdir)/configure: $(srcdir)/configure.in $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

config.h: stamp-h
	@if test ! -f $@; then \
		rm -f stamp-h; \
		$(MAKE) stamp-h; \
	else :; fi
stamp-h: $(srcdir)/config.h.in $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES= CONFIG_HEADERS=config.h \
	     $(SHELL) ./config.status
	@echo timestamp > stamp-h 2> /dev/null
$(srcdir)/config.h.in: $(srcdir)/stamp-h.in
	@if test ! -f $@; then \
		rm -f $(srcdir)/stamp-h.in; \
		$(MAKE) $(srcdir)/stamp-h.in; \
	else :; fi
$(srcdir)/stamp-h.in: $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOHEADER)
	@echo timestamp > $(srcdir)/stamp-h.in 2> /dev/null

mostlyclean-hdr:

clean-hdr:

distclean-hdr:
	-rm -f config.h

maintainer-clean-hdr:

mostlyclean-binPROGRAMS:

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)

distclean-binPROGRAMS:

maintainer-clean-binPROGRAMS:

install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo "  $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`"; \
	     $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	list='$(bin_PROGRAMS)'; for p in $$list; do \
	  rm -f $(DESTDIR)$(bindir)/`echo $$p|sed 's/$(EXEEXT)$$//'|sed '$(transform)'|sed 's/$$/$(EXEEXT)/'`; \
	done

.c.o:
	$(COMPILE) -c $<

.s.o:
	$(COMPILE) -c $<

.S.o:
	$(COMPILE) -c $<

mostlyclean-compile:
	-rm -f *.o core *.core

clean-compile:

distclean-compile:
	-rm -f *.tab.c

maintainer-clean-compile:

specform$(EXEEXT): $(specform_OBJECTS) $(specform_DEPENDENCIES)
	@rm -f specform$(EXEEXT)
	$(LINK) $(specform_LDFLAGS) $(specform_OBJECTS) $(specform_LDADD) $(LIBS)

tapcat$(EXEEXT): $(tapcat_OBJECTS) $(tapcat_DEPENDENCIES)
	@rm -f tapcat$(EXEEXT)
	$(LINK) $(tapcat_LDFLAGS) $(tapcat_OBJECTS) $(tapcat_LDADD) $(LIBS)

tapget$(EXEEXT): $(tapget_OBJECTS) $(tapget_DEPENDENCIES)
	@rm -f tapget$(EXEEXT)
	$(LINK) $(tapget_LDFLAGS) $(tapget_OBJECTS) $(tapget_LDADD) $(LIBS)

tapsplit$(EXEEXT): $(tapsplit_OBJECTS) $(tapsplit_DEPENDENCIES)
	@rm -f tapsplit$(EXEEXT)
	$(LINK) $(tapsplit_LDFLAGS) $(tapsplit_OBJECTS) $(tapsplit_LDADD) $(LIBS)

unspecform$(EXEEXT): $(unspecform_OBJECTS) $(unspecform_DEPENDENCIES)
	@rm -f unspecform$(EXEEXT)
	$(LINK) $(unspecform_LDFLAGS) $(unspecform_OBJECTS) $(unspecform_LDADD) $(LIBS)

tapls$(EXEEXT): $(tapls_OBJECTS) $(tapls_DEPENDENCIES)
	@rm -f tapls$(EXEEXT)
	$(LINK) $(tapls_LDFLAGS) $(tapls_OBJECTS) $(tapls_LDADD) $(LIBS)

tap2dsk$(EXEEXT): $(tap2dsk_OBJECTS) $(tap2dsk_DEPENDENCIES)
	@rm -f tap2dsk$(EXEEXT)
	$(LINK) $(tap2dsk_LDFLAGS) $(tap2dsk_OBJECTS) $(tap2dsk_LDADD) $(LIBS)

mkp3fs$(EXEEXT): $(mkp3fs_OBJECTS) $(mkp3fs_DEPENDENCIES)
	@rm -f mkp3fs$(EXEEXT)
	$(LINK) $(mkp3fs_LDFLAGS) $(mkp3fs_OBJECTS) $(mkp3fs_LDADD) $(LIBS)

bin2bas$(EXEEXT): $(bin2bas_OBJECTS) $(bin2bas_DEPENDENCIES)
	@rm -f bin2bas$(EXEEXT)
	$(LINK) $(bin2bas_LDFLAGS) $(bin2bas_OBJECTS) $(bin2bas_LDADD) $(LIBS)

sna2tap$(EXEEXT): $(sna2tap_OBJECTS) $(sna2tap_DEPENDENCIES)
	@rm -f sna2tap$(EXEEXT)
	$(LINK) $(sna2tap_LDFLAGS) $(sna2tap_OBJECTS) $(sna2tap_LDADD) $(LIBS)

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP)
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	here=`pwd` && cd $(srcdir) \
	  && mkid -f$$here/ID $$unique $(LISP)

TAGS:  $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS)'; \
	unique=`for i in $$list; do echo $$i; done | \
	  awk '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)config.h.in$$unique$(LISP)$$tags" \
	  || (cd $(srcdir) && etags $(ETAGS_ARGS) $$tags config.h.in $$unique $(LISP) -o $$here/TAGS)

mostlyclean-tags:

clean-tags:

distclean-tags:
	-rm -f TAGS ID

maintainer-clean-tags:

distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	-rm -rf $(distdir)
	GZIP=$(GZIP_ENV) $(TAR) zxf $(distdir).tar.gz
	mkdir $(distdir)/=build
	mkdir $(distdir)/=inst
	dc_install_base=`cd $(distdir)/=inst && pwd`; \
	cd $(distdir)/=build \
	  && ../configure --srcdir=.. --prefix=$$dc_install_base \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) dist
	-rm -rf $(distdir)
	@banner="$(distdir).tar.gz is ready for distribution"; \
	dashes=`echo "$$banner" | sed s/./=/g`; \
	echo "$$dashes"; \
	echo "$$banner"; \
	echo "$$dashes"
dist: distdir
	-chmod -R a+r $(distdir)
	GZIP=$(GZIP_ENV) $(TAR) chozf $(distdir).tar.gz $(distdir)
	-rm -rf $(distdir)
dist-all: distdir
	-chmod -R a+r $(distdir)
	GZIP=$(GZIP_ENV) $(TAR) chozf $(distdir).tar.gz $(distdir)
	-rm -rf $(distdir)
distdir: $(DISTFILES)
	-rm -rf $(distdir)
	mkdir $(distdir)
	-chmod 777 $(distdir)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  if test -d $$d/$$file; then \
	    cp -pr $$d/$$file $(distdir)/$$file; \
	  else \
	    test -f $(distdir)/$$file \
	    || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	    || cp -p $$d/$$file $(distdir)/$$file || :; \
	  fi; \
	done
info-am:
info: info-am
dvi-am:
dvi: dvi-am
check-am: all-am
check: check-am
installcheck-am:
installcheck: installcheck-am
all-recursive-am: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-recursive

install-exec-am: install-binPROGRAMS
install-exec: install-exec-am

install-data-am:
install-data: install-data-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am
install: install-am
uninstall-am: uninstall-binPROGRAMS
uninstall: uninstall-am
all-am: Makefile $(PROGRAMS) config.h
all-redirect: all-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) AM_INSTALL_PROGRAM_FLAGS=-s install
installdirs:
	$(mkinstalldirs)  $(DESTDIR)$(bindir)


mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)
	-rm -f config.cache config.log stamp-h stamp-h[0-9]*

maintainer-clean-generic:
mostlyclean-am:  mostlyclean-hdr mostlyclean-binPROGRAMS \
		mostlyclean-compile mostlyclean-tags \
		mostlyclean-generic

mostlyclean: mostlyclean-am

clean-am:  clean-hdr clean-binPROGRAMS clean-compile clean-tags \
		clean-generic mostlyclean-am

clean: clean-am

distclean-am:  distclean-hdr distclean-binPROGRAMS distclean-compile \
		distclean-tags distclean-generic clean-am

distclean: distclean-am
	-rm -f config.status

maintainer-clean-am:  maintainer-clean-hdr maintainer-clean-binPROGRAMS \
		maintainer-clean-compile maintainer-clean-tags \
		maintainer-clean-generic distclean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."

maintainer-clean: maintainer-clean-am
	-rm -f config.status

.PHONY: mostlyclean-hdr distclean-hdr clean-hdr maintainer-clean-hdr \
mostlyclean-binPROGRAMS distclean-binPROGRAMS clean-binPROGRAMS \
maintainer-clean-binPROGRAMS uninstall-binPROGRAMS install-binPROGRAMS \
mostlyclean-compile distclean-compile clean-compile \
maintainer-clean-compile tags mostlyclean-tags distclean-tags \
clean-tags maintainer-clean-tags distdir info-am info dvi-am dvi check \
check-am installcheck-am installcheck all-recursive-am install-exec-am \
install-exec install-data-am install-data install-am install \
uninstall-am uninstall all-redirect all-am all installdirs \
mostlyclean-generic distclean-generic clean-generic \
maintainer-clean-generic clean mostlyclean distclean maintainer-clean


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
