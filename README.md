# GoLibrary
Project for store and search books

## Features
 * Search by content
 * Render part of book in web browser
 * SSO login with [Authelia](https://www.authelia.com/docs/)
 * Ldap integration (See authela/configuration.yml)
## Requirements
1. LDAP server. For example use [docker-openldap](https://github.com/osixia/docker-openldap/blob/master/example/docker-compose.yml)
## How to install
### Generate ssl certs
For example, you can use this command:
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cert.key -out cert.crt
```

### Env
Copy .env.example to .env and enter values
### Config
_Add config settings or remove this paragraph_
### Run
```
docker-compose up -d
```
