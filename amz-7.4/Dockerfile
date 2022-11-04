# Use official amazonlinux 2
FROM amazonlinux:2

# Metadata
LABEL org.lable-schema.name = "UAZ Graduate College: Amazon Linux LAMP Web"
LABEL org.label-schema.description = "The LAmP (web) components of a full LAMP stack environment. Includes only MySQL client libs."
LABEL org.label-schema.vcs-url = "https://github.com/uazgraduatecollege/lamp-web"
LABEL org.lable-schema.vendor = "University of Arizona Graduate College IT"

# Freshen yum packages
RUN yum update -y

# Prep PHP installation
RUN amazon-linux-extras install -y epel php7.4

# Base apache installation
RUN yum install -y \
    clamav \
    git \
    httpd \
    memcached \
    mod_proxy \
    mod_ssl \
    openssl \
    unzip \
    zip

# PHP installation
RUN yum install -y \
    php \
    php-common \
    php-curl \
    php-imagick \
    php-intl \
    php-json \
    php-ldap \
    php-mbstring \
    php-memcached \
    php-soap \
    php-xml

# Dependencies to install mod_xsendfile
RUN yum install -y \
    gcc \
    httpd-devel

# Install mod_xsendfile
RUN cd /tmp \
    && curl https://raw.githubusercontent.com/sdaylor/mod_xsendfile/master/mod_xsendfile.c > mod_xsendfile.c \
    && apxs -cia mod_xsendfile.c \
    && rm /tmp/*.*

# remove previously installed build dependencies
RUN yum remove -y apr-devel \
    apr-util-devel \
    binutils \
    cpp \
    cyrus-sasl \
    cyrus-sasl-devel \
    expat-devel \
    gcc \
    glibc-devel \
    glibc-headers \
    hostname \
    httpd-devel \
    initscripts \
    iproute \
    iputils \
    kernel-headers \
    libatomic \
    libcilkrts \
    libdb-devel \
    libitm \
    libmnl \
    libmpc \
    libmpx \
    libquadmath \
    libsanitizer \
    mpfr \
    openldap-devel \
    procps-ng \
    sysvinit-tools

# Seed apache httpd configuration
COPY opt/etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf
COPY opt/etc/httpd/conf.d/ssl.conf /etc/httpd/conf.d/ssl.conf
COPY opt/etc/httpd/conf.modules.d/00-base.conf /etc/httpd/conf.modules.d/00-base.conf

# Install PHP composer
RUN curl -sLS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin/ --filename=composer

# Initialize clamav
RUN cp /usr/lib/systemd/system/clamav-clamonacc.service /etc/systemd/system/clamd.service
RUN systemctl enable clamd.service
RUN /usr/bin/freshclam

# Metadata
LABEL org.label-schema.tag = "amz-php7.4"

