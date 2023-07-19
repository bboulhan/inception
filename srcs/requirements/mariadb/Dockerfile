FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir ibra

COPY /tools/script.sh /ibra 

CMD ["bash","./ibra/script.sh"]



