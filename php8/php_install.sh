#/bin/sh
apt update
apt install apt-transport-https lsb-release ca-certificates wget -y
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
apt update
apt install php${php_version}-{cli,common，fpm,bz2,curl,intl,mysql,readline,xml,memcached,msgpack,bcmath,apcu,mbstring,ldap,pdo,zip,igbinary,imagick,opcache,gmp} -y
