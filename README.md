# jmeter-hls-plugin

# Container image for **Apache JMeter** and **Blazemeter HLS Plugin** for Video Streaming Benchmark

[![Apache JMeter Logo](https://jmeter.apache.org/images/logo.svg)](https://jmeter.apache.org)
[![JMeter PLugins Logo](https://jmeter-plugins.org/img/site/logo.png)](https://jmeter-plugins.org)

* **Apache JMeter** : an application designed to load test functional behavior and measure performance - https://jmeter.apache.org

* **JMeter Plugins** : an independent set of plugins - https://jmeter-plugins.org


* The **version number** is composed of two version numbers
  * the first is the version of the Apache JMeter embedded in this container image
  * the second is for this container image itself

## Apache JMeter including Blaemeter HLS plugin available with the JMeter Plugins Manager


***For a Docker image containing only Apache JMeter, see *** https://hub.docker.com/r/justb4/jmeter/)***

## Execute the test plan
* The following steps are for Podman network
  * run "sudo podman network create -d macvlan -o parent=\[Preferred Network Interface] vodnetwork"
  * run "sudo /usr/libexec/cni/dhcp daemon" on the other console or terminal
  * Edit vod-run.sh for 
    "sudo podman run --rm --name ${NAME} --network **vodnetwork** -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@" 
  * run ./vod-test.sh

## Credits

Thanks to https://github.com/egaillardon/jmeter-plugins and https://github.com/justb4/docker-jmeter for providing
the Dockerfiles that inspired me.  
