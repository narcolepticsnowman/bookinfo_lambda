#!/usr/bin/env bash
if [ -f reviews.zip ]; then
  rm -f reviews.zip
fi
docker run --rm "$(docker build -q "$@" .)" cat reviews.zip > reviews.zip
echo "Created zip file"
ls -l reviews.zip
