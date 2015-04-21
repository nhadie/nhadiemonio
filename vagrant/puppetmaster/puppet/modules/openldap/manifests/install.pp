class openldap::install {

	file { "/usr/local/src/openldap-2.4.40.tgz" :
		owner	=> "root",
		group	=> "root",
		mode	=> "0775",
		source	=> "puppet:///modules/openldap/openldap-2.4.40.tgz",
		notify	=> Exec['extract_openldap'],
	}

	exec { "extract_openldap" :
		cwd		=> "/usr/local/src",
		command		=> "tar -zxvf /usr/local/src/openldap-2.4.40.tgz && chown -R root:root /usr/local/src/openldap-2.4.40",
		refreshonly	=> true,
		notify		=> Exec['install_openldap']
	}

	exec { "install_openldap" :
                cwd             => "/usr/local/src/openldap-2.4.40",
		command		=> "./configure && make depend && make test && make && make install"
                refreshonly     => true,
	}

}
