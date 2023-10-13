#!/bin/bash

#echo "Delete acme.json"
#rm certificates/acme.json

#echo "Create acme and permission"
#touch certificates/acme.json
#chmod 600 certificates/acme.json

docker-compose down && docker-compose up -d
sleep 1
docker-compose logs
