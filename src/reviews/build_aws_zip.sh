#!/usr/bin/env bash
if [ -f reviews.zip ]; then
  rm -f reviews.zip
fi

imageId=$(docker build "$@" .|tee /dev/tty|grep "^Successfully built"|awk '{print $NF}')

docker run --rm "$imageId" cat reviews.zip > reviews.zip
echo "Created zip file"
ls -l reviews.zip
