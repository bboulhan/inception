#!/bin/sh

mkdir -p /run/php
touch /run/php/php7.3-fpm.pid
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"

if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p /var/www/html
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar #download wp-cli (WordPress Command Line Interface pour managing your site)
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp # you might use the wp plugin install command to install a plugin, or the wp theme list command to list the installed themes.

	cd /var/www/html
	wp core download --allow-root #download the latest version of WordPress  and The --allow-root option allows the command to be executed by the root user
	
	sed -i "s/database_name_here/${DB_NAME}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/username_here/${USER_NAME}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/password_here/${USER_PASS}/g" "/var/www/html/wp-config-sample.php"
	sed -i "s/localhost/${DB_HOST}/g" "/var/www/html/wp-config-sample.php"
	cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
    
	wp core install --url=localhost/ --title=bboulhan --admin_user=$USER_NAME --admin_password=$USER_PASS --admin_email=$ADMIN_EMAIL --skip-email  --path="/var/www/html" --allow-root
    wp user create $WP_USER $USER_EMAIL --role=author --user_pass=$WP_PASS --allow-root

fi

php-fpm7.3 -F
