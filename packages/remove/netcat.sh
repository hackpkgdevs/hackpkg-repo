#!/bin/bash

if [[ "$(uname -n)" == "debian" ]]
then
  apt-get remove --purge -y netcat
else
  export HACKPKG_ERROR="unsupported_distribution"
fi