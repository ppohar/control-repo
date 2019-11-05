# Class: profile::ssh_server
#
#
class profile::ssh_server {
  package { 'openssh-server':
    ensure => 'present'
  }

  service { 'sshd':
    ensure => 'running',
    enable => true
  }

  ssh_authorized_key { 'root@master.puppet.com':
    ensure => 'present',
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDANVSdt1o15SK9uf1v3g+d4w/iDQ6CSPnBDUmY2Grfi+L0/HXrCHRH66h1IERGO8X/8XR1GuvHffsxXBtm77joEfnxK0CZGU08fp6KShwqwj9eIAtvwdMwpR6eH5ZaGykWWt7QuyaZJ6FH4FENPncxQY/6ldYIDBnP7A99TDMEE0DT8VJzD3exaHOOfGIExITU7rvnYp7XsYPU1V1PEbrppOhXYxCvIU3nVg/kp6YSByj54KJU6GYaKD3eF6ATubPvPuffYjlHBLoJ4felbHaIQ/2r82Ye5u9kwvLbq+AmmCXKkpRRpgLOVbDyWOA7uJiJGAj6nXYG8cTSfwKhgCOh root@master.puppet.vm'
  }
}
