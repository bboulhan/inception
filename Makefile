# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bboulhan <bboulhan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/18 15:41:16 by bboulhan          #+#    #+#              #
#    Updated: 2023/06/18 15:41:17 by bboulhan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

build:	create
	docker-compose -f srcs/docker-compose.yml build

create:
	mkdir -p ${HOME}/data/mariadb ${HOME}/data/wordpress 

run: build up

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

delete:
	rm -rf ${HOME}/data/mariadb ${HOME}/data/wordpress

clean:	delete
	docker-compose -f srcs/docker-compose.yml down --volumes
