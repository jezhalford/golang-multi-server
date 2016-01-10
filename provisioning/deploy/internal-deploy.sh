#!/bin/bash
#
# Deploy changes to the application from inside vagrant
# Used as a shell provisioner from within the Vagrantfile
#
sudo service sample stop || echo "Already stopped"

cd /vagrant/src/sample
go build -o /var/www/sample/sample

sudo service sample start
