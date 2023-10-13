#!/bin/sh

cd "$(dirname "$0")"

source ../.env

sed -i "s/PROVIDER/$PROVIDER/g" data/config.json
sed -i "s/ZONE_IDENTIFIER/$ZONE_IDENTIFIER/g" data/config.json
sed -i "s/DOMAIN/$DOMAIN/g" data/config.json
sed -i "s/TOKEN/$TOKEN/g" data/config.json
