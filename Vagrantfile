ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
Vagrant.require_version '>= 1.5'

Vagrant.configure('2') do |config|
  name = File.basename(Dir.getwd) + '-dev'

  config.vm.box = 'joshfng/railsbox'
  config.ssh.forward_agent = true
  config.vm.hostname = name

  config.vm.synced_folder '.', '/vagrant'

  config.vm.provider :virtualbox do |v|
    v.name = name
    v.memory = 2048
    v.cpus = 1
  end

  Vagrant.configure("2") do |config|
    config.vm.provision "shell", path: "./utils/provision.sh"
  end

  # rails
  config.vm.network 'forwarded_port', guest: 3000, host: 30000
  config.vm.network 'forwarded_port', guest: 3001, host: 30001
  config.vm.network 'forwarded_port', guest: 3002, host: 30002
end
