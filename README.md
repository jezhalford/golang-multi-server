golang-multi-server
===================

A multi-server web application, using Chef and Go.

Requirements
------------
 * Vagrant 1.5+
 * VirtualBox


Usage
-----

Checkout the repo, `cd` into it and run -

    vagrant up

This will create three VMs - one web and two application. The web node will
balance requests between app1 and app2 using a round-robin mechanism.

You can then visit http://33.33.33.10 to see the servers working.

Deploying Code Changes
----------------------

Changes to the Go application code can be applied to the servers by running

    ./deploy/deploy.sh

This will re-run the Vagrant shell provisioner that is used to compile the
Go application and (re)-start its service.


Testing
-------

You'll need to install kitchen...

    gem install test-kitchen
    gem install kitchen-vagrant

...and then run the tests -

    kitchen test
