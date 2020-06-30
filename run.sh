#!/bin/bash

if !(type ansible > /dev/null 2>&1); then
	sudo apt update -y
	sudo apt install ansible -y
fi

ansible-playbook ubuntu.yml --ask-become-pass $@

if [ -d $HOME/dotfiles ]; then
	bash $HOME/dotfiles/setup.sh
fi
