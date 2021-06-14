class mymodule_base_file {
file { '/home/ubuntu/ExecuteScript.sh':
  ensure   => present,
  source   => 'puppet:///modules/mymodule/ExecuteScript.sh',
  mode     => '0777',
  owner    => 'root',
  group    => 'root',
}
->
exec { 'Generate the config':
  command  => '/home/ubuntu/ExecuteScript.sh',
  cwd      => '/home/ubuntu/',
  user     => 'root',
}
->
file { '/etc/nginx/ssl/server.key':
  ensure   => present,
  source   => 'puppet:///modules/mymodule/server.key',
  mode     => '0400',
  owner    => 'root',
  group    => 'root',
}

->
file { '/etc/nginx/ssl/server.crt':
  ensure   => present,
  source   => 'puppet:///modules/mymodule/server.crt',
  mode     => '0755',
  owner    => 'root',
  group    => 'root',
}

->
file { '/etc/nginx/ssl/server.csr':
  ensure   => present,
  source   => 'puppet:///modules/mymodule/server.csr',
  mode     => '0755',
  owner    => 'root',
  group    => 'root',
}
->
file { '/etc/nginx/ssl/server.info':
  ensure   => present,
  source   => 'puppet:///modules/mymodule/server.info',
  mode     => '0755',
  owner    => 'root',
  group    => 'root',
}
#test

}

