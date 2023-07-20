FROM debian:buster

# RUN apt-get update && apt-get install -y php php-mysql php-fpm 

RUN apt-get update && apt-get install -y php7.3 php-fpm php-mysql curl


COPY ./tools/script.sh .

CMD ["bash", "./script.sh"]
# RUN chmod +x script.sh

# ENTRYPOINT ["./script.sh"]


