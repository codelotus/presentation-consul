#!/usr/bin/env bash

cp /vagrant/dev_artifacts/ssl/consul.key /etc/pki/tls/private/host.key
chmod 644 /etc/pki/tls/private/host.key

cp /vagrant/dev_artifacts/ssl/consul.cert /etc/pki/tls/certs/host.cert
chmod 644 /etc/pki/tls/certs/host.cert

cp /vagrant/dev_artifacts/ssl/ca.cert /etc/pki/CA/certs/ca.cert.pem
chmod 644 /etc/pki/CA/certs/ca.cert.pem


# Fix Epel
/usr/bin/yum --disablerepo=epel -y update  ca-certificates

# Turn off IP Tables because we don't need it for development
/etc/init.d/iptables save
/etc/init.d/iptables stop
chkconfig iptables off
