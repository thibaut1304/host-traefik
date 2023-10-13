# ddns-updater

- Add .env file with :
	* For basic auth dashboard traefik  
		- AUTH_USER= {user}:{password hash in md5}
	* Email for acme letsencrypt  
		- ACME_EMAIL=
	* Information of your providers dns hostname  
		- CF_API_EMAIL=
		- PROVIDER=
		- ZONE_IDENTIFIER=
		- DOMAIN=
		- TOKEN=

