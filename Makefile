CURRENT_DIR = $(shell pwd)
NGINX = user/share/nginx/html

.PHONY: run stop

run:
	docker run -it --rm -d -p 8080:80 --name web -v $(CURRENT_DIR):/$(NGINX) nginx

stop:
	docker stop web