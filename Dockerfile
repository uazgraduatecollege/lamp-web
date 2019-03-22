# Use Ubuntu Xenial
FROM ubuntu:16.04

# install LAMP web dependencies
RUN apt-get update && apt-get install -y \
  apache2 \
  git \
  mysql-client \
  libapache2-mod-php7.0 \
  libapache2-mod-xsendfile \
  memcached \
  openssl \
  php7.0 \
  php-curl \
  php-imagick \
  php-intl \
  php-json \
  php-ldap \
  php-mcrypt \
  php-memcached \
  php-mysql \
  php-soap \
  php-xml

