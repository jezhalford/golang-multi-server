Vagrant.configure("2") do |config|

  # If your Vagrant version is lower than 1.5, you can still use this
  # provisioning by commenting or removing the line below and providing the
  # *.vm.box_url parameter to each box defined below, in place of the box name
  Vagrant.require_version ">= 1.5"

  config.vm.define "web", primary: true do |web|
    web.vm.box = "web"
    web.vm.box = "ubuntu/trusty64"
    web.vm.network :private_network, ip: "33.33.33.10"

    web.vm.provision "chef_zero" do |chef|
      chef.add_recipe "hostsfile"
      chef.add_recipe "nginx"
    end
  end

  (1..2).each do |i|
    config.vm.define "app#{i}" do |app|
      app.vm.box = "ubuntu/trusty64"
      app.vm.network :private_network, ip: "33.33.33.1#{i}"
      app.vm.hostname = "app#{i}-sample"

      app.vm.provision "chef_zero" do |chef|
        chef.add_recipe "hostsfile"
        chef.add_recipe "app"
      end

      app.vm.provision "shell", path: "deploy/internal-deploy.sh"
    end
  end

end
