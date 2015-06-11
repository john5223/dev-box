DEV BOX
==========





UBUNTU
=======


	curl https://raw.githubusercontent.com/john5223/dev-box/master/bin/bootstrap-ubuntu.sh | bash


ARCH
=======


	curl https://raw.githubusercontent.com/john5223/dev-box/master/bin/bootstrap-arch.sh | bash



MANUAL
=========


	git clone https://github.com/john5223/dev-box.git
	ansible-playbook orchestrate.yml -i inventory --connection=local


Or if you want to set your own variables:


	git clone https://github.com/john5223/dev-box.git
	ansible-playbook orchestrate.yml -i inventory --connection=local -e "fullname=<name> email=<email> username=<name>"

