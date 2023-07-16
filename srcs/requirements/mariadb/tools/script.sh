service mysql start

sleep 4

mysql < /ibra/init.sql


# sed -i 's/127\.0\.0\.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld