# Use Ubuntu Xenial
FROM ubuntu:16.04

# Metadata
LABEL org.label-schema.name = "UA Graduate College: LAMP Web"
LABEL org.label-schema.description = "The LAmP (web) components of a full LAMP stack environment. Includes only MySQL client libs."
LABEL org.label-schema.vcs-url = "https://github.com/uazgraduatecollege/lamp-web"
LABEL org.label-schema.vendor = "University of Arizona Graduate College IT"

# Set timezone info
ENV TZ=America/Phoenix
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install some base packages
RUN apt-get update && apt-get install -y \
  curl \
  git \
  language-pack-en-base \
  memcached \
  mysql-client \
  software-properties-common \
  openssl \
  unzip \
  zip

# install PHP PPA
RUN export LC_ALL=en_US.UTF-8 && \
  export LANG=en_US.UTF-8 && \
  add-apt-repository ppa:ondrej/apache2 && \
  add-apt-repository ppa:ondrej/php && \
  apt-get update

# install apache2
RUN apt-get install -y \
  apache2 \
  libapache2-mod-xsendfile

# install PHP
RUN apt-get install -y \
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
  php-sodium

# Install composer
RUN curl -sLS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin/ --filename=composer

# Metadata
LABEL org.label-schema.tag = "php-7.2"

