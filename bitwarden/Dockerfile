# Utiliser l'image officielle de Nginx
FROM nginx:latest

# Installer OpenSSL
RUN apt-get update \
    && apt-get install -y openssl \
    && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail

RUN mkdir -p /etc/nginx/certs

WORKDIR /etc/nginx

# Générer un certificat auto-signé et une clé
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout certs/nginx-selfsigned.key -out certs/nginx-selfsigned.crt \
    -subj "/C=FR/ST=France/L=Paris/O=Security/OU=Development/CN=bitwarden.local"

# Copier la configuration Nginx personnalisée
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
