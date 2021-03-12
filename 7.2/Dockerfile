# Use Ubuntu Xenial
FROM ubuntu:18.04

# Metadata
LABEL org.label-schema.name = "UA Graduate College: LAMP Web"
LABEL org.label-schema.description = "The LAmP (web) components of a full LAMP stack environment. Includes only MySQL client libs."
LABEL org.label-schema.vcs-url = "https://github.com/uazgraduatecollege/lamp-web"
LABEL org.label-schema.vendor = "University of Arizona Graduate College IT"

# Set timezone info
ENV TZ=America/Phoenix
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install base packages, apache2, php 7.2
RUN apt-get update && apt-get install -y \
  clamav-daemon \
  curl \
  git \
  language-pack-en-base \
  memcached \
  mysql-client \
  software-properties-common \
  openssl \
  unzip \
  zip

# install LAMP web dependencies
RUN apt-get update && apt-get install -y \
  apache2 \
  libapache2-mod-xsendfile \
  libapache2-mod-php7.2 \
  php7.2 \
  php7.2-curl \
  php7.2-imagick \
  php7.2-intl \
  php7.2-json \
  php7.2-ldap \
  php7.2-mbstring \
  php7.2-memcached \
  php7.2-mysql \
  php7.2-soap \
  php7.2-xml \
  php7.2-yaml

# initialize the ClamAV db
RUN /usr/bin/freshclam

# Install composer
RUN curl -sLS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin/ --filename=composer

# Metadata
LABEL org.label-schema.tag = "php-7.2"

