#!/bin/sh


curl -O ibra.html https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
sleep 4
# curl -O https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz --strip-components=1 && rm latest.tar.gz

# chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

service php7.4-fpm start