#!/usr/bin/env bash
if [ -f productpage.zip ]; then
  rm -f productpage.zip
fi
docker run --rm "$(docker build -q "$@" .)" cat productpage.zip > productpage.zip
echo "Created zip file"
ls -l productpage.zip
