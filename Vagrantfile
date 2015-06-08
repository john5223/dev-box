
Vagrant.configure('2') do |config|
  config.vm.box = "arch"
  config.vm.box_url = "https://downloads.sourceforge.net/project/vagrant-archlinux/vagrant-archlinux.box"

  config.vm.provider :virtualbox do |vbox, override|
    override.vm.box = 'arch'
    vbox.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.provider :vmware_fusion do |vbox, override|
    override.vm.box = 'arch'
    vbox.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.hostname = 'arch.local'

  config.vm.network "private_network", ip: "172.16.100.2"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'orchestrate.yml'
    ansible.host_key_checking = false

    # ansible.tags = ['x', 'tmux']
    # ansible.skip_tags = ['xmonad']
    # ansible.verbose = 'vvvv'

    # Workaround: https://github.com/mitchellh/vagrant/issues/2174
    extra_vars = { ansible_ssh_user: 'vagrant', testing: true}
    ansible.raw_arguments = "--extra-vars=" + extra_vars.map { |k,v| "#{k}=#{v}" }.join(" ")
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'awesome.yml'
    ansible.host_key_checking = false

    # ansible.tags = ['x', 'tmux']
    # ansible.skip_tags = ['xmonad']
    # ansible.verbose = 'vvvv'

    # Workaround: https://github.com/mitchellh/vagrant/issues/2174
    extra_vars = { ansible_ssh_user: 'vagrant', testing: true}
    ansible.raw_arguments = "--extra-vars=" + extra_vars.map { |k,v| "#{k}=#{v}" }.join(" ")
  end

end
