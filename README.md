DEV BOX
==========


UBUNTU
=======

.. code-block:: bash
	bash bin/boostrap-ubuntu.sh


ARCH
=======

.. code-block:: bash
	bash bin/boostrap-arch.sh



MANUAL
=========

.. code-block:: bash

	git clone https://github.com/john5223/dev-box.git
	ansible-playbook orchestrate.yml -i inventory --connection=local


Or if you want to set your own variables:


.. code-block:: bash

	git clone https://github.com/john5223/dev-box.git
	ansible-playbook orchestrate.yml -i inventory --connection=local -e "fullname=<name> email=<email> username=<name>"

