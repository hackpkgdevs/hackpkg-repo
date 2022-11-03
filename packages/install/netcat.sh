#!/bin/bash
export HACKPKG_INSTALL_SRC="apt";

if [[ "$(uname -n)" == "debian" ]]
then
  apt-get install -y netcat
  export HACKPKG_INSTALL_DST="$(which netcat)"
else
  export HACKPKG_ERROR="unsupported_distribution"
fi