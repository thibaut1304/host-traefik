#!/bin/bash

SOURCE_ENV="./.env"
DEST_ENV_DDNS="./ddns/.env"
DEST_ENV_APP="./app/.env"

declare -a VARS_DDNS=(
    "PROVIDER"
    "ZONE_IDENTIFIER"
    "DOMAIN"
    "TOKEN"
)

echo "Build .env file in ddns"

touch "$DEST_ENV_DDNS"

for VAR in "${VARS_DDNS[@]}"; do
    VALUE=$(grep "^$VAR=" "$SOURCE_ENV" | cut -d'=' -f2-)
    if [ -n "$VALUE" ]; then
        sed -i "/^$VAR=/d" "$DEST_ENV_DDNS"
        echo "$VAR=$VALUE" >> "$DEST_ENV_DDNS"
    fi
done

declare -a VARS_APP=(
    "AUTH_USER"
    "ACME_EMAIL"
    "CF_API_EMAIL"
    "TOKEN"
)

echo "Build .env file in app"

touch "$DEST_ENV_APP"

for VAR in "${VARS_APP[@]}"; do
    VALUE=$(grep "^$VAR=" "$SOURCE_ENV" | cut -d'=' -f2-)
    if [ -n "$VALUE" ]; then
		sed -i "/^$VAR=/d" "$DEST_ENV_APP"
        echo "$VAR=$VALUE" >> "$DEST_ENV_APP"
    fi
done

ssh-keygen -f "${HOME}/.ssh/known_hosts" -R "192.168.1.87"
ssh-copy-id thibaut@192.168.1.87

ansible-playbook -i hosts.yml deploy.yml -K
