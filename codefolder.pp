class mymodule_base_folder {
file { 
 '/home/www-data/web2py/applications/welcome/controllers':
  ensure => 'directory',
  source => 'puppet:///modules/mymodule/controllers',
  recurse => 'remote',
  path => '/home/www-data/web2py/applications/welcome/controllers',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744', # Use 0700 if it is sensitive
}
->
file { 
 '/home/www-data/web2py/applications/welcome/models':
  ensure => 'directory',
  source => 'puppet:///modules/mymodule/models',
  recurse => 'remote',
  path => '/home/www-data/web2py/applications/welcome/models',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744', # Use 0700 if it is sensitive
}
->
file { 
 '/home/www-data/web2py/applications/welcome/private':
  ensure => 'directory',
  source => 'puppet:///modules/mymodule/private',
  recurse => 'remote',
  path => '/home/www-data/web2py/applications/welcome/private',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744', # Use 0700 if it is sensitive
}
->
file { 
 '/home/www-data/web2py/applications/welcome/static':
  ensure => 'directory',
  source => 'puppet:///modules/mymodule/static',
  recurse => 'remote',
  path => '/home/www-data/web2py/applications/welcome/static',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744', # Use 0700 if it is sensitive
}
->
file { 
 '/home/www-data/web2py/applications/welcome/views':
  ensure => 'directory',
  source => 'puppet:///modules/mymodule/views',
  recurse => 'remote',
  path => '/home/www-data/web2py/applications/welcome/views',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744', # Use 0700 if it is sensitive
}
->
file { 
 '/etc/supervisor/conf.d':
  ensure => 'directory',
  source => 'puppet:///modules/mymodule/conf.d',
  recurse => 'remote',
  path => '/etc/supervisor/conf.d',
  owner => 'root',
  group => 'root',
  mode  => '0744', # Use 0700 if it is sensitive
}
->
exec { "Restart Nginx":
	command => 'sudo /etc/init.d/nginx restart',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
exec { "Restart Supervisorctl":
       command => 'sudo /etc/init.d/supervisor restart',
       logoutput => 'true',
       path    => ["/usr/bin", "/usr/sbin"]
}

}

