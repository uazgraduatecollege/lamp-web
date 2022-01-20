# lamp-web

A base environment for uazgradcoll/lamp-web projects.

Multilple PHP version are supported through the following tags:

- `latest`: Same as php-7.4

Base OS: Ubuntu 20.04LTS

- `php-7.4`: Uses the default Ubuntu 20.04LTS packages provided by Canonical

Base OS: Ubuntu 18.04LTS

- `php-7.3`: Uses [Ondřej Surý's PPA](https://launchpad.net/~ondrej/+archive/ubuntu/php)
- `php-7.2`: Uses the default Ubuntu 18.04LTS packages provided by Canonical

Base OS: Ubuntu 16.04LTS

- `php-7.1`: Uses [Ondřej Surý's PPA](https://launchpad.net/~ondrej/+archive/ubuntu/php)
- `php-7.0`: Uses the default Ubuntu 16.04LTS packages provided by Canonical

More information on the [uazgraduatecollege/lamp-web on Docker Hub](https://cloud.docker.com/u/uazgraduatecollege/repository/docker/uazgraduatecollege/lamp-web).

## Usage

Intended primarily as a base image from which to create other application images. Eg.

```Dockerfile
FROM uazgraduatecollege/lamp-web:latest

# Do something
```

## Build

Building is not necessary in most cases as the images can be accessed directly from Docker Hub, however:

```
$ docker build -t uazgraduatecollege/lamp-web:latest .
```

## License

See [LICENSE.md](LICENSE.md)

