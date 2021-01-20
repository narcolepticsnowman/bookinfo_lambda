#!/usr/bin/env bash
if [ -f details.zip ]; then
  rm -f details.zip
fi
docker run --rm "$(docker build -q "$@" .)" cat details.zip > details.zip
echo "Created zip file"
ls -l details.zip
