# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-docker-compose")
  system("vagrant plugin install vagrant-docker-compose")
  puts "Dependencies installed."
  exit
end

unless Vagrant.has_plugin?("vagrant-vbguest")
  system("vagrant plugin install vagrant-vbguest")
  puts "Dependencies installed."
  exit
end

# unless Vagrant.has_plugin?("vagrant-disksize")
#   system("vagrant plugin install vagrant-disksize")
#   puts "Dependencies installed."
#   exit
# end

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-18.04"
  config.vm.box_check_update = false
  config.vm.define :webcv do |box|
    box.vm.hostname = 'webcv'
    box.vm.network "private_network", ip: "192.168.4.10"

    box.vm.synced_folder ".", "/vagrant", id: "v-root", mount_options: ["rw", "tcp", "nolock", "noacl", "async"], type: "nfs", nfs_udp: false

    box.vm.provider :virtualbox do |pr|
      pr.cpus = 2
      pr.memory = "4096"
      pr.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
      pr.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    box.vm.provision "shell", path: "scripts/vagrant/initial.sh"

    box.vm.provision :docker
    box.vm.provision :docker_compose, yml: "/vagrant/docker-compose.yml", run: "always"
  end

end
