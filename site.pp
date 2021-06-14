node default {
  include mymodule_base
  include mymodule_base_file
  include mymodule_base_folder
}

#node "sunagent.us-east-2.compute.internal"{

#file { '/home/www-data/web2py/applications/welcome/private/3_node_js.js':
#  ensure   => present,
#  source   => 'puppet:///modules/mymodule/sun_3_node_js.js',
#  mode     => '0755',
#  owner    => 'root',
#  group    => 'root',
#}
#->
#exec { "Restart Supervisorctl":
#	command => 'sudo /etc/init.d/supervisor restart',
#	logoutput => 'true',
#	path    => ["/usr/bin", "/usr/sbin"]
#}
#}
