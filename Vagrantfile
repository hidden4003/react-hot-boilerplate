# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.synced_folder "src/", "/home/vagrant/src", type: "rsync", rsync__auto: true, rsync__exclude: ".git/"

  config.vm.provision "file", source: "package.json", destination: "~/package.json"
  config.vm.provision "file", source: "webpack.config.js", destination: "~/webpack.config.js"
  config.vm.provision "file", source: "server.js", destination: "~/server.js"
  config.vm.provision "file", source: "index.html", destination: "index.html"

  config.vm.provision "shell", path: "provision/system.sh"
  config.vm.provision "shell", privileged: false, path: "provision/webpack.sh"
end
