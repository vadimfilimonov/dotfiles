install:
	brew bundle
	ansible-playbook --ask-become-pass --connection=local --inventory 127.0.0.1, setup.yml
