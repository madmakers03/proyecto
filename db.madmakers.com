$TTL 1D
@		IN	SOA	asterix.madmakers.com.	administrador.madmakers.com.	(
				2	;Serial
				604800	;Refresh
				86400	;Retry
				2419200	;Expire
				10800	)	;Negative Cache TTL (en segundos todo)
;Servidor DNS autorizado para el  Dominio
@		IN	NS	asterix.madmakers.com.
@		IN	NS	obelix.madmakers.com.

;Hosts
asterix		IN	A	172.16.0.20
obelix		IN	A	172.16.0.10
caesar		IN	A	172.16.0.1
panoramix		IN	A	172.16.0.30
vhost1		IN	A	172.16.0.20
vhost2		IN	A	172.16.0.20

;Alias
ftp		IN	CNAME	asterix.madmakers.com.
odt		IN	CNAME	obelix
bridged		IN	CNAME	caesar
client		IN	CNAME	panoramix

;Servidores de Correo tipo MX
@		IN	MX	10	obelix
