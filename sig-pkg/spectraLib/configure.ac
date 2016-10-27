#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
#AC_CONFIG_SRCDIR([src/Print.cpp])

AC_INIT(spectra, 0.01)
AC_CONFIG_SRCDIR(include/Spectra.h)
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE


# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_RANLIB

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lSup':
AC_CHECK_LIB([Sup], [main])
# FIXME: Replace `main' with a function in `-lfftw3f':
AC_CHECK_LIB([fftw3f], [main])
# FIXME: Replace `main' with a function in `-lnsl':
AC_CHECK_LIB([nsl], [main])
# FIXME: Replace `main' with a function in `-lpthread':
AC_CHECK_LIB([pthread], [main])

# Checks for header files.
AC_CHECK_HEADERS([stdint.h string.h sys/time.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_INT32_T
AC_TYPE_SIZE_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T

# Checks for library functions.
AC_CHECK_FUNCS([gettimeofday sqrt])

AC_CONFIG_FILES([Makefile
                 include/Makefile
                 src/Makefile
                 test/Makefile])
AC_OUTPUT
