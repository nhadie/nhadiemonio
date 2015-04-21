;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     nhadiemonio.com. root.nhadiemonio.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;

@       IN      NS      dns.nhadiemonio.com.


dns		IN	A	172.28.128.8
puppetmaster	IN	A	172.28.128.8
client		IN	A	172.28.128.16
ldap		IN	A	172.28.128.32
web		IN	A	172.28.128.64
db		IN	A	172.28.128.96

