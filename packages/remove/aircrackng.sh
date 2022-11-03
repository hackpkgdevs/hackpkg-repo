#!/bin/bash

if [[ "$(uname -n)" == "debian" ]]
then
  apt-get remove --purge -y aircrack-ng
else
  export HACKPKG_ERROR="unsupported_distribution"
fi