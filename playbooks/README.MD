Consul Presentation for Distributed Computing Denver
====================================================

This project provides the code examples for the Consul presentation at Distributed Computing Denver


Development
-----------
This project assumes you have a recent version of [Virtual Box](https://www.virtualbox.org/) installed

1. start the vm's: `vagrant up`
1. run the playbook: `ansible-playbook -i development site.yml`
1. Log into the consul ui, and add the following key : value
  * river/MSG : Hello World


Interesting Details
-----------------

1. HaProxy: `http://127.0.0.1:1936/haproxy?stats` login with admin:password
1. River (not really doing anything): `http://127.0.0.1:8480`
1. Wrk:  `https://github.com/wg/wrk` for load testing
1. Consul UI: http://localhost:8500/ui/
1. REST Api: `curl http://localhost:8500/v1/agent/checks`
1. DNS Resolution in Consul: dig @localhost -p 8600 web.service.vagrant-ds.consul. A
1. DNS Resolution in Bind: dig @localhost -p 53 web.service.vagrant-ds.consul. A
1. Default master token for Consul ACL's: testing

Note: If the consul ui is not loading, log into the vagrant1 vm with the following command:
  * ssh -L 8500:127.0.0.1:8500 -p 64673 -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1
