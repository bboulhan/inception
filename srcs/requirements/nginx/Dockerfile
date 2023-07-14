# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bboulhan <bboulhan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/18 15:41:12 by bboulhan          #+#    #+#              #
#    Updated: 2023/06/22 15:12:59 by bboulhan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian

RUN apt-get update -y && apt-get install -y nginx && apt-get install -y openssl

RUN mkdir -p /etc/nginx/certs


RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/nginx-selfsigned.key -out /etc/nginx/certs/nginx-selfsigned.crt -subj "/C=MO/ST=Morocco/L=khouribga/O=inception/CN=bboulhan.42.fr"

# EXPOSE 443

# COPY . /app

COPY ./conf/nginx.conf /etc/nginx/conf.d

# WORKDIR /app

CMD ["nginx", "-g", "daemon off;"]
# CMD ["bash", "script"]
