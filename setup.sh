DOMAIN="example.com"
echo "\
127.0.0.1  $DOMAIN
127.0.0.1  traefik.$DOMAIN
127.0.0.1  authelia.$DOMAIN
127.0.0.1  s.$DOMAIN
127.0.0.1  kibana.$DOMAIN
127.0.0.1  api.$DOMAIN" | sudo tee -a /etc/hosts > /dev/null

# not tested
echo "Generating SSL certificate for *.$DOMAIN"
docker run -a stdout -v $PWD/traefik/certs:/tmp/certs authelia/authelia authelia certificates generate --host *.$DOMAIN --dir /tmp/certs/ > /dev/null