DEV BOX
==========


UBUNTU
=======


	bash bin/boostrap-ubuntu.sh


ARCH
=======


	bash bin/boostrap-arch.sh



MANUAL
=========


	git clone https://github.com/john5223/dev-box.git
	ansible-playbook orchestrate.yml -i inventory --connection=local


Or if you want to set your own variables:


	git clone https://github.com/john5223/dev-box.git
	ansible-playbook orchestrate.yml -i inventory --connection=local -e "fullname=<name> email=<email> username=<name>"

