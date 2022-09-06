#!/bin/bash
#
# Run JMeter-HLS-Server Container image with options

NAME="jmeter-hls-server"
JMETER_VERSION=${JMETER_VERSION:-"5.4.3"}
IMAGE="mrdojojo/jmeter-hls-server:${JMETER_VERSION}"

# Finally run
echo ${JMETER_VERSION}
echo ${PWD}
echo ${IMAGE}

#podman run --rm --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@

podman run -dit -p 1099:1099 --env IP=[server IP address] --env RMI_PORT=1099 -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@ 
