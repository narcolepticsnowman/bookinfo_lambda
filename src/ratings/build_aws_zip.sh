#!/usr/bin/env bash
if [ -f ratings.zip ]; then
  rm -f ratings.zip
fi
imageId=$(docker build "$@" .|tee /dev/tty|grep "^Successfully built"|awk '{print $NF}')

docker run --rm "$imageId" cat ratings.zip > ratings.zip
echo "Created zip file"
ls -l ratings.zip
