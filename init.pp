class mymodule_base {
exec { "Execution First(update)":
	command => 'sudo apt-get -y update',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Second(upgrade)":
	command => 'sudo apt-get -y upgrade',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Third(autoremove)":
	command => 'sudo apt-get autoremove',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Fourth(autoclean)":
	command => 'sudo apt-get autoclean',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Fifth(nginx-full)":
	command => 'sudo apt-get -y install nginx-full',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Sixth(build-essential python-dev libxml2-dev python-pip unzip wget)":
	command => 'sudo apt-get -y install build-essential python-dev libxml2-dev python-pip unzip wget',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Seventh(uwsgi)":
	command => 'sudo pip install uwsgi',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Eighth(uwsgi-plugin-python)":
	command => 'sudo apt-get install -y uwsgi-plugin-python',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Ninth(uwsgi)":
	command => 'sudo apt-get -y install uwsgi',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Tenth(python-psycopg2)":
	command => 'sudo apt-get -y install python-psycopg2',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Eleventh(python-gevent)":
	command => 'sudo apt-get -y install python-gevent',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Twelveth(python-zmq)":
	command => 'sudo apt-get -y install python-zmq',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Thirteenth(supervisor)":
	command => 'sudo apt-get -y install supervisor',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Fourteen(pyzmq)":
	command => 'sudo pip install pyzmq',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Fiftheen(requests)":
	command => 'sudo pip install requests',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Sixteen(nodejs)":
	command => 'sudo apt-get -y install nodejs',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Seventeen(npm)":
	command => 'sudo apt-get -y install npm',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Eighteen(sockjs)":
	command => 'sudo npm install sockjs',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}
->
exec { "Execution Eighteen(zeromq)":
	command => 'sudo npm install zeromq',
	logoutput => 'true',
	path    => ["/usr/bin", "/usr/sbin"]
}

}






