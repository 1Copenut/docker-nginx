CURRENT_DIR = $(shell pwd)
NGINX = usr/share/nginx/html

.PHONY: build up down

build:
	docker build -t webserver .

up:
	docker run -it --rm -d -p 8080:80 --name web webserver

down:
	docker stop web