#!/bin/bash

ssh-keygen -f "${HOME}/.ssh/known_hosts" -R "192.168.1.87"
ssh-copy-id thibaut@192.168.1.87

ansible-playbook -i hosts.yml deploy.yml -K
