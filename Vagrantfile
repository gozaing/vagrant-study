$update_channel = "alpha" 

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "yungsang/coreos"
  config.vm.provision :shell, :path => "setup.sh"
  config.vm.provision :shell, run: "always", :path => "start.sh" 
  config.vm.network :forwarded_port, guest: 80, host: 8001
  config.vm.network :private_network, ip: "192.168.33.33"
  config.vm.synced_folder "./app", "/app", id: "core_app", type: "nfs", mount_options: ["nolock", "vers=3", "udp"]
  config.vm.synced_folder "./logs", "/logs", id: "core_logs", type: "nfs", mount_options: ["nolock", "vers=3", "udp"]
  config.vm.synced_folder "./tmp", "/tmp", id: "core_tmp", type: "nfs", mount_options: ["nolock", "vers=3", "udp"]
end