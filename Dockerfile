FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY content/index.html /usr/share/nginx/html
