#!/usr/bin/env bash
if [ -f productpage.zip ]; then
  rm -f productpage.zip
fi
imageId=$(docker build "$@" .|tee /dev/tty|grep "^Successfully built"|awk '{print $NF}')

docker run --rm "$imageId" cat productpage.zip > productpage.zip
echo "Created zip file"
ls -l productpage.zip
