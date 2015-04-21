#!/usr/bin/env bash
#
# Uncomment if behind a proxy server.
# export {http,https,ftp}_proxy='http://username:password@proxy-host:80'

# Playbook dir
ANSIBLE_PLAYBOOK=$1

# Is a good practice to always update before installing
sudo apt-get update

# Install Ansible
echo "Installing Ansible"
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Run the playbook.
echo "Running Ansible provisioner defined in Vagrantfile."
sudo ansible-playbook /vagrant/${ANSIBLE_PLAYBOOK} -c local