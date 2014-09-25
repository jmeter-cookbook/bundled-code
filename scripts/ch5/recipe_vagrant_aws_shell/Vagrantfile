Vagrant.configure("2") do |config|
  config.vm.box = "awsbox"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"

  config.vm.provider :aws do |aws, override|
    aws.access_key_id = "YOUR AWS KEY ID"
    aws.secret_access_key = "YOUR AWS SECRET KEY"
    aws.keypair_name = "YOUR KEYPAIR NAME"    
    aws.region = "YOUR AWS REGION"
    aws.ami = "ami-7747d01e"

    override.ssh.private_key_path = "PATH TO YOUR PRIVATE KEY"    
    override.ssh.username = "ubuntu"
  end

  # define multiple VMs.
  config.vm.define :vm1
  config.vm.define :vm2  
  #config.vm.define :vm3
  #config.vm.define :vm4

  config.vm.synced_folder "testplans", "/home/ubuntu/testplans"

  # provision with shell
  config.vm.provision "shell", path: "setup.sh"
end
