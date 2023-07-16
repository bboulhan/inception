FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir ibra

COPY /tools/init.sql /ibra

COPY /tools/script.sh /ibra 

CMD ["bash", "./ibra/script.sh"]
# CMD ["chmod 777", "./ibra/script.sh"]
# CMD ["mysqld_safe"]

