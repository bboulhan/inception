#!/bin/sh
sed -i 's/127\.0\.0\.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

sleep 10
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'%' IDENTIFIED BY '$USER_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USER_NAME'@'%';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASS';"
mysql -e "FLUSH PRIVILEGES;"


kill $(cat /var/run/mysqld/mysqld.pid)

echo "restart"

mysqld 