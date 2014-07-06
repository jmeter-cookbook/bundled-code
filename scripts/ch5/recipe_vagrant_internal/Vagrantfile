Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  #config.vm.network :forwarded_port, guest: 1099, host: 1097  
  config.vm.network :public_network
  
  #provision with shell
  config.vm.provision :shell, :path => "shell/main.sh"

  #provision with puppet
  config.vm.provision :puppet do |puppet|
   puppet.manifests_path = "manifests"
   puppet.module_path = "modules"
   puppet.manifest_file  = "main.pp"
  end
end
