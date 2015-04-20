class nameserver::install {

	package { 'bind9' :
		ensure => installed,
	}

        package { 'bind9utils' :
                ensure => installed,
        }

}
