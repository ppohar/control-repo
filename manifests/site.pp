node default {
  file { '/root/README':
      ensure  => present,
      content => 'hello world',
        }
}
