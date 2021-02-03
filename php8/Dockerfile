FROM debian:latest
LABEL maintainer="kcenceis@kcenceis.com"

ENV php_version 8.0

ADD phprun.sh /

RUN apt update && \
    apt upgrade -y && \
    apt install apt-transport-https lsb-release ca-certificates wget -y && \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list && \
    apt update

RUN apt install -y php${php_version}-cli  \
               php${php_version}-common \
               php${php_version}-fpm \
               php${php_version}-bz2 \
               php${php_version}-curl \
               php${php_version}-intl \
               php${php_version}-mysql \
               php${php_version}-readline \
               php${php_version}-xml \
               php${php_version}-bcmath \
               php${php_version}-memcached \
               php${php_version}-msgpack \
               php${php_version}-apcu \
               php${php_version}-mbstring \
               php${php_version}-ldap \
               php${php_version}-pdo \
               php${php_version}-zip \
               php${php_version}-igbinary \
               php${php_version}-imagick \
               php${php_version}-opcache \
               php${php_version}-gmp \
               php${php_version}-redis \
               php${php_version}-gd \
               php${php_version}-soap


RUN mkdir -p /etc/php/${php_version}/fpm/ && \
    mkdir -p /etc/php/${php_version}/pool.d/ && \
    mkdir -p /var/run/php/


ADD ./php/${php_version}/fpm/php.ini /etc/php/${php_version}/fpm/php.ini
ADD ./php/${php_version}/fpm/pool.d/www.conf /etc/php/${php_version}/fpm/pool.d/www.conf

WORKDIR	/
STOPSIGNAL SIGQUIT
CMD bash /phprun.sh
EXPOSE 9000/tcp
