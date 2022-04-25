Vagrant.configure('2') do |config|
  config.vm.box = 'hashicorp/bionic64'
  config.vm.box_url = 'https://vagrantcloud.com/hashicorp/bionic64'
  config.vm.box_version = '1.0.282'

  # config.vm.box = 'ramsey/macos-catalina'
  # config.vm.box_url = 'https://vagrantcloud.com/ramsey/macos-catalina'
  # config.vm.box_version = '1.0.0'

  config.vm.hostname = :mashina

  config.vm.provider :virtualbox do |v|
    v.cpus = 4
    v.memory = 4096
  end

  config.vm.network :private_network, ip: '192.168.56.150'
end
