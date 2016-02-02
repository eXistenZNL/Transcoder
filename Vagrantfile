Vagrant.configure("2") do |config|

  hostname = "transcoder.local"

  config.vm.box = "ubuntu/wily64"

  config.vm.hostname = "transcoder.local"
  config.vm.network "private_network", ip: "192.168.56.94"
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |v|
    v.name = "transcoder.local"

    v.customize [
      "modifyvm", :id,
      "--natdnshostresolver1", "on",
      "--natdnsproxy1", "on",
      "--memory", "8092",
      "--cpus", "4",
      "--cpuexecutioncap", "90",
    ]

  end

  config.vm.provision "shell", path: "provision.sh"

end

