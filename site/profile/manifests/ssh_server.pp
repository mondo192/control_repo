class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  
  ssh_authorized_Key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxa+qBmysOjT2qUIq0LpsXLR9C8SUv7geYxQogOMiopPkfhrB3DjhHRKoYwRofVho2tgcFj4iaEAVkHbme9rMMadZWoo3xaivh3WmBK9TzvyBI9xdg/JhlYLHJHSRjwzCAji85JDDgT6Z2Hkps/TA8xQwsdrykmTElpeAwW1WiBjQkXCQoJeHplyaHC4clXMTZ+ZT/PdGXrj5bxszT1C8KnoIJS7z5dV8lI4TdCn/NqCPNVmkLzxql/yRiAR+/Q/EZP7fqnjjbiEMRaE2clcGknF1uVc5C1mane+6Mf2cX8xL5XbngnZ83qVEZBkAj/x6TCkcTFQMoGCXDuL3Gs/an',
  }
}
