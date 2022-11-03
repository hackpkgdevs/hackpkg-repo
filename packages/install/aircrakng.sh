#!/bin/bash
export HACKPKG_INSTALL_SRC="apt";

if [[ "$(uname -n)" == "debian" ]]
then
  apt-get install -y aircrack-ng
  export HACKPKG_INSTALL_DST="$(which aircrack-ng)"
else
  export HACKPKG_ERROR="unsupported_distribution"
fi