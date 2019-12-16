Vagrant.configure("2") do |config|
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.vm.boot_timeout = 300
  config.vm.box = "windows-2019-web"
  config.vm.network "public_network", bridge: "External"
  config.winrm.transport = :plaintext
  config.winrm.basic_auth_only = true
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider 'hyperv' do |hv|
    hv.ip_address_timeout = 240
    hv.cpus = 4
    hv.maxmemory = 4096
  end
end
