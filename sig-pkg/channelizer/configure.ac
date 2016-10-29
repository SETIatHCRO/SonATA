#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

# New version of autoconf
AC_INIT(channelizer, 0.01)
AC_CONFIG_SRCDIR(include/Transmitter.h)
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC


# Checks for libraries.
# FIXME: Replace `main' with a function in `-lDfb':
AC_CHECK_LIB([Dfb], [main])
# FIXME: Replace `main' with a function in `-lPkt':
AC_CHECK_LIB([Pkt], [main])
# FIXME: Replace `main' with a function in `-lSonata':
AC_CHECK_LIB([Sonata], [main])
# FIXME: Replace `main' with a function in `-lSup':
AC_CHECK_LIB([Sup], [main])
# FIXME: Replace `main' with a function in `-lfftw3f':
AC_CHECK_LIB([fftw3f], [main])
# FIXME: Replace `main' with a function in `-lnsl':
AC_CHECK_LIB([nsl], [main])
# FIXME: Replace `main' with a function in `-lpthread':
AC_CHECK_LIB([pthread], [main])
# FIXME: Replace `main' with a function in `-lsseChannelizerInterface':
AC_CHECK_LIB([sseChannelizerInterface], [main])
# FIXME: Replace `main' with a function in `-lsseInterface':
AC_CHECK_LIB([sseInterface], [main])
# FIXME: Replace `main' with a function in `-lsseutil':
AC_CHECK_LIB([sseutil], [main])

# Checks for header files.
AC_CHECK_HEADERS([arpa/inet.h fcntl.h netinet/in.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_INT8_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_CHECK_FUNCS([gethostname inet_ntoa memset])

AC_CONFIG_FILES([Makefile
                 include/Makefile
                 src/Makefile])
AC_OUTPUT
