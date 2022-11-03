#!/bin/bash

if [[ "$(uname -n)" == "debian" ]]
then
  apt-get remove --purge -y nmap
else
  export HACKPKG_ERROR="unsupported_distribution"
fi