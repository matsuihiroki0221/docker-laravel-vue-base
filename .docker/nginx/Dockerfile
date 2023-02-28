FROM nginx:alpine-slim AS base

ENV TZ Asia/Tokyo

COPY ./api /var/www/html

FROM base AS dev

COPY .docker/nginx/conf/default.dev.conf /etc/nginx/conf.d/default.conf



FROM base AS prod

COPY .docker/nginx/conf/default.prod.conf /etc/nginx/conf.d/default.conf