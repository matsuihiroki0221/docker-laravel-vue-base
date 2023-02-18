FROM nginx:alpine-slim

ENV TZ Asia/Tokyo

COPY .docker/nginx/conf/default.conf /etc/nginx/conf.d/default.conf

COPY ./api /var/www/html/public