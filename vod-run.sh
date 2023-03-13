#!/bin/bash
#
# Run JMeter-HLS-Plug Container image with options

NAME="jmeter-hls-plugin"
JMETER_VERSION=${JMETER_VERSION:-"5.4.3"}
#JMETER_VERSION=${JMETER_VERSION:-"5.4.3-x86-64"}
IMAGE="mrdojojo/jmeter-hls-plugin:${JMETER_VERSION}"
WORKPATH="/home/jmeter/vod-benchmark"

# Finally run
echo ${JMETER_VERSION}
echo ${PWD}
echo ${IMAGE}
podman run --rm --name ${NAME} -i -v ${PWD}:${WORKPATH}:Z -w ${WORKPATH} ${IMAGE} $@
#sudo podman run --rm --cpuset-cpus 1-30 --pids-limit=-1 --name ${NAME} -i -v ${PWD}:${WORKPATH}:Z -w ${WORKPATH} ${IMAGE} $@
