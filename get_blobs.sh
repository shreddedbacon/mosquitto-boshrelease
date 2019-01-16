#!/bin/bash

if [ ! -d .downloads ]
then
  mkdir -p .downloads
fi

url="https://github.com/eclipse/mosquitto/archive/v1.5.5.tar.gz"

curl -J -L -o .downloads/mosquitto-v1.5.5.tar.gz "${url}"

bosh add-blob .downloads/mosquitto-v1.5.5.tar.gz mosquitto/mosquitto-v1.5.5.tar.gz
