################################################################################
#
# File:    Makefile.am
# Project: OpenSonATA
# Authors: The OpenSonATA code is the result of many programmers
#          over many years
#
# Copyright 2011 The SETI Institute
#
# OpenSonATA is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# OpenSonATA is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with OpenSonATA.  If not, see<http://www.gnu.org/licenses/>.
# 
# Implementers of this code are requested to include the caption
# "Licensed through SETI" with a link to setiQuest.org.
# 
# For alternate licensing arrangements, please contact
# The SETI Institute at www.seti.org or setiquest.org. 
#
################################################################################

## $Id: Makefile.am,v 1.15 2009/06/30 23:44:51 jane Exp $

## Process this file with automake to produce Makefile.in

top_srcdir = ..
top_builddir = ..

AUTOMAKE_OPTIONS = foreign

bin_PROGRAMS = channelizer

EXTRA_PROGRAMS =

EXTRA_DIST =

BUILT_SOURCES =

SIGPROC_DIR = $(top_srcdir)/..
SIGPROC_INCDIR = $(SIGPROC_DIR)/include

SSE_INCDIR = $(top_srcdir)/../../sse-pkg/include

SSE_INTERFACE_DIR = $(top_builddir)/../../sse-pkg/sseInterfaceLib
SSE_INTERFACE_INCDIR = $(top_srcdir)/../../sse-pkg/sseInterfaceLib
SSE_INTERFACE_LIB = $(SSE_INTERFACE_DIR)/libsseInterface.a

SSE_CHAN_INTERFACE_DIR = $(top_builddir)/../../sse-pkg/sseChannelizerInterfaceLib
SSE_CHAN_INTERFACE_INCDIR = $(top_srcdir)/../../sse-pkg/sseChannelizerInterfaceLib
SSE_CHAN_INTERFACE_LIB = $(SSE_CHAN_INTERFACE_DIR)/libsseChannelizerInterface.a

SSE_UTIL_DIR = $(top_builddir)/../../sse-pkg/sseutil
SSE_UTIL_INCDIR = $(top_srcdir)/../../sse-pkg/sseutil
SSE_UTIL_LIB = $(SSE_UTIL_DIR)/libsseutil.a

# DFB library directories
DFB_DIR = $(top_srcdir)/../dfbLib
DFB_INCDIR = $(DFB_DIR)/include
DFB_LIBDIR = $(DFB_DIR)/src
DFB_LIB = $(DFB_LIBDIR)/libDfb.a

# the following are packet headers
PKT_HDR_DIR = $(top_srcdir)/../ATApackets
PKT_HDR_INCDIR = $(PKT_HDR_DIR)/include
PKT_HDR_LIBDIR = $(PKT_HDR_DIR)/src
PKT_LIB = $(PKT_HDR_LIBDIR)/libPkt.a

# SonATA library directories
SONATA_DIR = $(top_srcdir)/../sonataLib
SONATA_INCDIR = $(SONATA_DIR)/include
SONATA_LIBDIR = $(SONATA_DIR)/src
SONATA_LIB = $(SONATA_LIBDIR)/libSonata.a

LIB_DEPENDS = $(SSE_INTERFACE_LIB) $(SSE_CHAN_INTERFACE_LIB) \
		$(SSE_UTIL_LIB) $(DFB_LIB) $(PKT_LIB) $(SONATA_LIB)

channelizer_DEPENDENCIES = $(LIB_DEPENDS)

CHANNELIZER_INCLUDE = $(top_srcdir)/include
CPPUNIT_ROOT=/usr/local/CppUnit

AM_CPPFLAGS= -I$(CHANNELIZER_INCLUDE) -I$(PKT_HDR_INCDIR) -I$(DFB_INCDIR) \
	-I$(SONATA_INCDIR) -I$(SIGPROC_INCDIR) -I$(SSE_INCDIR) \
	-I$(SSE_INTERFACE_INCDIR) -I$(SSE_CHAN_INTERFACE_INCDIR) \
	-I$(SSE_UTIL_DIR) \
	-I$(CPPUNIT_ROOT)/include -I$(top_srcdir)/include \
	-I/usr/include/tcl8.3 -I/usr/include/tcl8.2 \
	-I$(top_srcdir)/lib

CHANNELIZER_LIBS = \
  $(IFFT_LINK_OPTIONS) \
  -lpthread -lnsl \
  -L$(SONATA_LIBDIR) \
  -L$(DFB_LIBDIR) \
  -L$(SSE_CHAN_INTERFACE_DIR) \
  -L$(SSE_INTERFACE_DIR) \
  -L$(SSE_UTIL_DIR) \
  -L$(PKT_HDR_LIBDIR) \
  -lSonata \
  -lPkt -lSup \
  -lDfb \
  -lsseChannelizerInterface \
  -lsseInterface \
  -lsseutil \
  -lfftw3f

LDADD = $(CHANNELIZER_LIBS)

channelizer_SOURCES = \
	Args.cpp \
	Beam.cpp \
	Channelizer.cpp \
	ChannelPacketVector.cpp \
	ChErrMsg.cpp \
	Cmd.cpp \
	Input.cpp \
	main.cpp \
	Print.cpp \
	Receiver.cpp \
	SseConnection.cpp \
	SseInput.cpp \
	SseOutput.cpp \
	State.cpp \
	Statistics.cpp \
	Transmitter.cpp \
	Worker.cpp
