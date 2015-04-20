class nameserver::service {

	service { 'bind9' :
		ensure	=> running,
		require	=> Class['nameserver::config'],
	}

}
