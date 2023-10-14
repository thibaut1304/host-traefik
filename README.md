# TODO List
- [x] New VM on big-brother for test DEV -> 192.168.1.89
- [x] New domaine for dev test -> dev-traefik.@ and dev-proxmox.@
- [ ] Test traefik v2.10
- [ ] Autoriser websocket pour les connections vnc au machines

# ddns-updater

- Add .env file with :
	* Connect to your remote vm
		- USERNAME=user
		- IP_ADDRESS=192.168.1.90
	* For basic auth dashboard traefik  
		- AUTH_USER=user:password hash in md5
	* Email for acme letsencrypt  
		- ACME_EMAIL=email@exemple.com
	* Information of your providers dns hostname  
		- CF_API_EMAIL=email@exemple.com
		- CF_API_TOKEN=token global
		- PROVIDER=cloudflare
		- ZONE_IDENTIFIER=74254136543653636536
		- DOMAIN=exemple.com
		- TOKEN=token only change ip dns


- Run this project with bash init.sh
