#!/bin/sh

tag=$1

if [ "$tag" = "" ]; then
  tag="latest"
fi

docker build -t thitu/android-dev-base:$tag -f Dockerfile . && docker push thitu/android-dev-base:$tag
