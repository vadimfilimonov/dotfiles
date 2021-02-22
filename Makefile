install:
	ansible-galaxy collection install -r requirements.yml
	ansible-playbook --ask-become-pass --connection=local --inventory 127.0.0.1, setup.yml
