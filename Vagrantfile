# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  #
  # Webserver creation
  #
  config.vm.define "klant1-test01-web01" do |web01_config|
      web01_config.vm.box = "ubuntu/bionic64"
      web01_config.vm.hostname = "klant1-test01-web01"
      web01_config.vm.network :private_network, ip: "10.0.1.11"
      web01_config.vm.provider "virtualbox" do |vb|
        vb.memory = "512"
        vb.gui = false
        vb.name = "klant1-test01-web01"
      end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "/home/student/Git/iac/ansible/playbook.yml"
    ansible.host_vars = {
      "host1" => {"http_port" => 80,
                  "maxRequestsPerChild" => 808},
      "host2" => {"http_port" => 303,
                  "maxRequestsPerChild" => 909}
    }
  end
    end
end
