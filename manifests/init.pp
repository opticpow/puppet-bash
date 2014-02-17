# Class to manage bash
class bash {

  package {
    'bash':
      ensure => present
  }

  file {
    '/etc/skel/.bashrc':
      ensure  => present,
      owner   => root,
      group   => root,
      mode    => 0444,
      source  => 'puppet:///modules/bash/bashrc',
      require => Package['bash']
  }
}
