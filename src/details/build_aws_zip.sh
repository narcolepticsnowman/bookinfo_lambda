#!/usr/bin/env bash
if [ -f details.zip ]; then
  rm -f details.zip
fi
imageId=$(docker build "$@" .|tee /dev/tty|grep "^Successfully built"|awk '{print $NF}')

docker run --rm "$imageId" cat details.zip > details.zip
echo "Created zip file"
ls -l details.zip
