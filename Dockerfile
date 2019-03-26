# Use Ubuntu Xenial
FROM ubuntu:16.04

# Metadata
LABEL org.label-schema.name = "UA Graduate College: LAMP Web"
LABEL org.label-schema.description = "The web / LAmP components of a full LAMP stack environment. Includes only MySQL client libs."
LABEL org.label-schema.vcs-url = "https://github.com/uazgraduatecollege/lamp-web"
LABEL org.label-schema.vendor = "University of Arizona Graduate College IT"

# Set timezone info
ENV TZ=America/Phoenix
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

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

# Install composer
RUN curl -sLS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin/ --filename=composer
