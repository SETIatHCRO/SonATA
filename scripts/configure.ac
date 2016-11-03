################################################################################
#
# File:    configure.in
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


AC_PREREQ([2.69])

# New version of autoconf
AC_INIT(scripts, 0.1)
AC_CONFIG_SRCDIR(./Makefile.am)
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE

AC_PREFIX_DEFAULT($HOME/sonata_install)

# Checks for programs.
AC_PROG_RANLIB

dnl Checks for programs.
AC_PROG_INSTALL

dnl Checks for library functions.
AC_SEARCH_LIBS(Tcl_Init, tcl8.6 tcl8.2 tcl)

dnl initialize libtool
AC_LIBTOOL_DLOPEN
AC_DISABLE_SHARED
AC_PROG_LIBTOOL
AC_SUBST(LIBTOOL_DEPS)
AC_OUTPUT(Makefile
	jane/Makefile
	kes/Makefile
	)
