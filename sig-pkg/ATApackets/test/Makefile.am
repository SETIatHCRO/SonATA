top_srcdir = ..
top_builddir = ..

AUTOMAKE_OPTIONS = foreign

check_PROGRAMS = pktTest

noinst_PROGRAMS = pktTest

TESTS = pktTest

EXTRA_PROGRAMS =

EXTRA_DIST =

BUILT_SOURCES =

PKT_DIR = $(top_srcdir)/src
PKT_INCDIR = $(top_srcdir)/include
PKT_LIBDIR = $(PKT_DIR)
PKT_LIB = $(PKT_LIBDIR)/libPkt.a

SUP_DIR = $(top_srcdir)/src
SUP_INCDIR = $(top_srcdir)/include
SUP_LIBDIR = $(SUP_DIR)
SUP_LIB = $(SUP_LIBDIR)/libSup.a

LIB_DEPENDS = $(PKT_LIB) $(SUP_LIB)

pktTest_DEPENDENCIES = $(LIB_DEPENDS)

AM_CPPFLAGS= -I . -I$(PKT_INCDIR) -I$(SUP_INCDIR) \
        -I$(top_srcdir)/include \
        -I$(top_srcdir)/lib

pktTest_SOURCES = \
        pktTest.cpp

TEST_LIBS = \
  -lpthread -lnsl \
  -L$(PKT_LIBDIR) \
  -lPkt \
  -L$(SUP_LIBDIR) \
  -lSup \
  -lfftw3f

LDADD = $(TEST_LIBS)
