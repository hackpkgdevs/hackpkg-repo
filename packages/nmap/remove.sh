#!/bin/bash

if [ -f "$(which nmap)" ]; then
    rm -fv "$(which nmap)"
fi
rm -rvf $HACKPKG_PROGRAM_DIR/nmap-7.93