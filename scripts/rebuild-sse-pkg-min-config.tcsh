#!/bin/tcsh

cd ${HOME}/SonATA/sse-pkg

./reconfig

make -j13 install

cd ${HOME}/SonATA/scripts

./reconfig

make -j13 install
