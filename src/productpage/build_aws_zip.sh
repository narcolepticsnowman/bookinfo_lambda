#!/usr/bin/env bash
if [ -f productpage.zip ]; then
  rm -f productpage.zip
fi
docker run --rm -ip 9080:9080 $(docker build -q .) bash -c "cat productpage.zip | base64" |base64 -d >productpage.zip
