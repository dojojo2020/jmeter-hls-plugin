# JMerter HLS Server container
## Use the container in JMeter Distribution mode

Reference: https://svn.apache.org/repos/asf/jmeter/tags/v4_0_RC6/docs/usermanual/jmeter_distributed_testing_step_by_step.html



:small_red_triangle:Pleae follow [the guidelines for setting up SSL](https://svn.apache.org/repos/asf/jmeter/tags/v4_0_RC6/docs/usermanual/remote-test.html#setup_ssl) and  generate rmi_keystore.jks from your workstation or PC where run JMeter in GUI :small_red_triangle:	

```
$ cd jmeter/bin
$ ./create-rmi-keystore.sh
What is your first and last name?
[Unknown]:  rmi
What is the name of your organizational unit?
[Unknown]:  My unit name
What is the name of your organization?
[Unknown]:  My organisation name
What is the name of your City or Locality?
[Unknown]:  Your City
What is the name of your State or Province?
[Unknown]:  Your State
What is the two-letter country code for this unit?
[Unknown]:  XY
Is CN=rmi, OU=My unit name, O=My organisation name, L=Your City, ST=Your State, C=XY correct?
[no]:  yes
```
