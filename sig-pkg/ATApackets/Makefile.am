AUTOMAKE_OPTIONS = foreign

SUBDIRS = \
	include \
	src \
	test

localinstall:
	make install prefix=`pwd`/install

# create source code documentation
doxygen:
	doxygen doxygen.config

noinst_SCRIPTS = reconfig
EXTRA_DIST = reconfig configure.ac
