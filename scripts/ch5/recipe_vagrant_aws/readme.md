### This assumes you have installed Vagrant >= 1.3.5 on your system and that you have installed the vagrant-aws plugin

#### Steps to run
- Clone project
- cd into cloned directory
- Run the following command
   __git submodule init && git submodule update__
- Edit Vagrantfile and supply your AWS credentials
- Run the following command
    __vagrant up vm1 --provider=aws__
