install:
	sudo ansible-galaxy install -r requirements.yml
	sudo ansible-playbook --connection=local --inventory 127.0.0.1, setup.yml
