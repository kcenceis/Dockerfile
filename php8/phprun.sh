#!/bin/sh
/usr/sbin/php-fpm${php_version}
#/bin/sh
#tail -f /dev/null
tail -f /var/log/php${php_version}-fpm.log
