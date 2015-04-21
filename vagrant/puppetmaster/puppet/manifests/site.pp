node 'puppetmaster.nhadiemonio.com' {

	include nameserver::install	
	include nameserver::config
	include nameserver::service

}

node 'ldap.nhadiemonio.com' {
	include openldap::install
}
