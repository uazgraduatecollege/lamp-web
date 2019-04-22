# Use Ubuntu Xenial
FROM ubuntu:16.04

# Metadata
LABEL org.label-schema.name = "UA Graduate College: LAMP Web"
LABEL org.label-schema.description = "The LAmP (web) components of a full LAMP stack environment. Includes only MySQL client libs."
LABEL org.label-schema.vcs-url = "https://github.com/uazgraduatecollege/lamp-web"
LABEL org.label-schema.vendor = "University of Arizona Graduate College IT"
LABEL org.label-schema.tag = "php-7.1"

# Set timezone info
ENV TZ=America/Phoenix
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install PHP PPA
RUN apt-get update && \
  apt-get install -y language-pack-en-base && \
  export LC_ALL=en_US.UTF-8 && \
  export LANG=en_US.UTF-8 && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:ondrej/apache2 && \
  add-apt-repository ppa:ondrej/php && \
  apt-get update

# install LAMP web dependencies
RUN apt-get install -y \
  apache2 \
  curl \
  git \
  libapache2-mod-php7.1 \
  libapache2-mod-xsendfile \
  memcached \
  mysql-client \
  openssl \
  php7.1 \
  php-curl \
  php-imagick \
  php-intl \
  php-json \
  php-ldap \
  php-mbstring \
  php-mcrypt \
  php-memcached \
  php-mysql \
  php-soap \
  php-xml \
  unzip \
  zip

# Install composer
RUN curl -sLS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin/ --filename=composer

