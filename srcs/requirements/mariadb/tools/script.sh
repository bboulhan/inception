service mysql start

# DB_NAME=IBRA_DB
# USER_NAME=BBOULHAN
# USER_PASS=ibra2001
# ROOT_PASS=root42
# sleep 4
sed -i 's/127\.0\.0\.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'%' IDENTIFIED BY '$USER_PASS';"
mysql -e "GRANT ALL ON $DB_NAME.* TO '$USER_NAME'@'%';"
mysql -e "ALTER USER 'ROOT'@'localhost' IDENTIFIED BY '$ROOT_PASS';"
mysql -e "FLUSH PRIVILEGES;"

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld