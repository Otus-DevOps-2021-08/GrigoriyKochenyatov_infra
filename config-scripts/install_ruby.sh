#!/bin/bash

if ! [ -x "$(command -v ruby)" ] || ! [ -x "$(command -v bundler)" ] ; then
  echo '[INFO]: ruby or bundler are not installed.' >&2
  sudo apt update
  sudo apt install -y ruby-full ruby-bundler build-essential
  exit 1
else
  echo "[OK]: Ruby and Bundler are already installed" >&2
fi


