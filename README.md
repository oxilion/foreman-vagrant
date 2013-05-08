# Install Foreman in a box using Vagrant

Installs Foreman as an all-in-one VM using vagrant. The current installation
builds a CentOS 6.4 machine. We'll also assume vagrant 1.1+ is already
installed.

	git clone --recursive git://github.com/oxilion/foreman-vagrant.git
	cd foreman-vagrant
	vagrant up

Then you should be able to open foreman on https://localhost:8443 and get
started.

# Resources

* http://www.vagrantup.com
* http://theforeman.org
