FROM debian:buster

# RUN apt-get update && apt-get install -y php php-mysql php-fpm 

RUN apt-get update && apt-get install -y php php-fpm php-mysql curl

RUN mkdir ibra

COPY ./tools/script.sh /ibra

CMD ["bash", "./ibra/script.sh"]

# CMD ["php-fpm", "-F"]

