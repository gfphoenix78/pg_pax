# contrib/adminpack/Makefile

MODULE_big = pax
OBJS = \
	$(WIN32RES) \
	paxam_handler.o

EXTENSION = pax
DATA = pax--1.0.sql 
PGFILEDESC = "pax - PAX table access method"

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pax_am
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
