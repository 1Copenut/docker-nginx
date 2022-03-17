FROM nginx:latest
COPY ./content/*.html /usr/share/nginx/html
