#!/usr/bin/env bash
if [ -f ratings.zip ]; then
  rm -f ratings.zip
fi
docker run --rm "$(docker build -q "$@" .)" cat ratings.zip > ratings.zip
echo "Created zip file"
ls -l ratings.zip
