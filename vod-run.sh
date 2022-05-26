#!/bin/bash
#
# Run JMeter-HLS-Plug Container image with options

NAME="jmeter-hls-plugin"
JMETER_VERSION=${JMETER_VERSION:-"latest"}
IMAGE="mrdojojo/jmeter-hls-plugin:${JMETER_VERSION}"

# Finally run
echo ${JMETER_VERSION}
echo ${PWD}
echo ${IMAGE}
podman run --rm --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
