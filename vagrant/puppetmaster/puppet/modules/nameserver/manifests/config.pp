class nameserver::config {

	file { 'named.conf.local' :
		path 	=> "/etc/bind/named.conf.local",
		ensure	=> file,
		require	=> Class['nameserver::install'],
		source	=> "puppet:///modules/nameserver/named.conf.local",
	}

        file { 'db.nhadiemonio.com' :
                path    => "/etc/bind/db.nhadiemonio.com",
                ensure  => file,
                require => Class['nameserver::install'],
                source  => "puppet:///modules/nameserver/db.nhadiemonio.com",
        }

}
