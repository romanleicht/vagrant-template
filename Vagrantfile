Vagrant.configure("2") do |config|
  config.vm.box = "trusty-server-cloudimg-amd64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.provision :shell, path: "provision/default.sh"


  # MongoDB
  # config.vm.network :forwarded_port, guest: 27017, host: 27017
  # config.vm.provision "chef_solo" do |chef|
  #   chef.add_recipe "mongodb"
  # end


  # RabbitMQ
  # config.vm.network :forwarded_port, guest: 5672, host: 5672
  # config.vm.network :forwarded_port, guest: 15672, host: 15672
  # config.vm.provision "chef_solo" do |chef|
  #   chef.add_recipe "rabbitmq"
  # end
end