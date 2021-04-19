.PHONY: run
run:
	docker run -it --rm -d -p 8080:80 --name web -v ~/Development/docker-nginx/site-content:/user/share/nginx/html nginx

.PHONY: stop
stop:
	docker stop web