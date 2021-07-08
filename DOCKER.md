# Docker

## Quick Start

```bash
docker-compose up -d 
```

## DB Config

```yaml
Host: mariadb
User: root
Password: root
```

Don't worry it is sandboxed and cannot be accessed
outside the containers other than through localhost.

That's it!

You can log into the container with:

```bash
docker exec -it matomo_matomo_1 /bin/zsh
```

Then you can run any command such as composer

```bash
composer install
```

BUT the configuration will have run that for you already.