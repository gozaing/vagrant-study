$update_channel = "alpha" 

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "yungsang/coreos"
  config.vm.synced_folder "./app", "/app" ,create: true
config.vm.synced_folder "./logs", "/logs" ,create: true
  config.vm.synced_folder "./tmp", "/tmp" ,create: true
  config.vm.provision :shell, :path => "setup.sh"
  config.vm.provision :shell, run: "always", :path => "start.sh" 
  config.vm.network :forwarded_port, guest: 80, host: 8001
end
