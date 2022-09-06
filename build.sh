#!/bin/bash

IMAGE_TIMEZONE="North America/Pacific Time" 
JMETER_VERSION="5.4.3"   

echo "Building mrdojojo/jmeter-hls-plugin:${JMETER_VERSION}"

#Build the jmeter-hls-plugin container image
podman  build  --build-arg JMETER_VERSION=${JMETER_VERSION} --build-arg TZ="${IMAGE_TIMEZONE}" -t "mrdojojo/jmeter-hls-plugin:${JMETER_VERSION}" .

echo "Building mrdojojo/jmeter-hls-server:${JMETER_VERSION}"

#Build the jmeter-hls-server container image
cd server-mode
podman  build  --build-arg JMETER_VERSION=${JMETER_VERSION} --build-arg TZ="${IMAGE_TIMEZONE}" -t "mrdojojo/jmeter-hls-server:${JMETER_VERSION}" .
