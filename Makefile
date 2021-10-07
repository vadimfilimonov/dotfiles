install-ubuntu:
	ansible-galaxy collection install -r requirements-ubuntu.yml
	ansible-playbook --ask-become-pass --connection=local --inventory 127.0.0.1, setup-ubuntu.yml
