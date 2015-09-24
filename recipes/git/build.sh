#!/bin/bash

#make configure
./configure --prefix=$PREFIX
make all
make install

cd $PREFIX
rm -rf lib lib64
rm -rf share/man
strip bin/* || echo
strip libexec/git-core/* || echo
