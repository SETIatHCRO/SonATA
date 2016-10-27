top_srcdir = ..
top_builddir = ..

AUTOMAKE_OPTIONS = foreign

noinst_LIBRARIES =	libPkt.a libSup.a

PUBLIC_HEADER_FILES =

libPkt_a_SOURCES = \
		ATADataPacketHeader.cpp \
		BeamPacket.cpp \
		ChannelPacket.cpp

libSup_a_SOURCES = \
		basics.cpp

# public headers to include in "make install" target
include_HEADERS =

check_programs =
TESTS =

EXTRA_PROGRAMS =

PKT_INCLUDE = $(top_srcdir)/include

SUP_INCLUDE = $(top_srcdir)/include

AM_CPPFLAGS = -I$(PKT_INCLUDE) -I$(SUP_INCLUDE)

LIBLIST = -L.

LDADD = $(LIBLIST)

