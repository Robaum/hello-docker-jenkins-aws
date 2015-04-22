# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion-open-ubuntu-14.04-amd64"
  config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"
  # Or, for Ubuntu 12.04:
  #config.vm.box = "phusion-open-ubuntu-12.04-amd64"
  #config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-12.04-amd64-vbox.box"

  # Add port-forward for Express app
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Add port-forward for Jenkins
  config.vm.network :forwarded_port, host: 8080, guest: 8080

  # Sync'd folder
  config.vm.synced_folder ".", "/vagrant"

  # Install Ansible and use as provision
  config.vm.provision "shell" do |sh|
    sh.path = "ansible/ansible.sh"
    sh.args = "ansible/provision.yml"
  end
end