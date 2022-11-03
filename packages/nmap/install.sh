#!/bin/bash
# Instructions from: https://nmap.org/download.html#source
export download_url="https://nmap.org/dist/nmap-7.93.tar.bz2"

# Download nmap binary
sudo curl $download_url -o \
    /tmp/nmap-7.93.tar.bz2

# Unzip to install directory
cd $HACKPKG_PROGRAM_DIR/nmap-7.93
bzip2 -cd /tmp/nmap-7.93.tar.bz2 | tar -xvf - -C $HACKPKG_PROGRAM_DIR

# Compile
cd $HACKPKG_PROGRAM_DIR/nmap-7.93;
./configure
make
make install

# Cleanup
cd
rm /tmp/nmap-7.93.tar.bz2

# Set output variables
export HACKPKG_INSTALL_SRC=$download_url
export HACKPKG_INSTALL_DST="$(which nmap)"