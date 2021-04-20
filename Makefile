CURRENT_DIR = $(shell pwd)
NGINX = usr/share/nginx/html

.PHONY: build up down

build:
	docker build -t webserver .

up:
	docker run -it --rm -d -p 8080:80 --name web -v $(CURRENT_DIR)/content:/$(NGINX) nginx

down:
	docker stop web