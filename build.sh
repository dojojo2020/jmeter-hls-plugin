#!/bin/bash

IMAGE_TIMEZONE="North America/Pacific Time" 
JMETER_VERSION="5.4.3"   

# Example build line
podman  build  --build-arg JMETER_VERSION=${JMETER_VERSION} --build-arg TZ="${IMAGE_TIMEZONE}" -t "mrdojojo/jmeter-hls-plugin:${JMETER_VERSION}" .
