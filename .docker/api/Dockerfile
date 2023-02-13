FROM php:8.1-fpm-alpine3.15 AS base

COPY .docker/api/conf/php.ini /usr/local/etc/php/php.ini

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apk update && \
    apk add --no-cache --virtual \
    git \
    zip \
    unzip \
    vim \
    && docker-php-ext-install pdo_mysql bcmath

WORKDIR /var/www/html

# 開発用
FROM base AS dev

CMD ["php-fpm", "-F"]


# 本番環境用
FROM base AS prod

COPY ./api .

RUN composer install --optimize-autoloader --no-dev && \ 
		php artisan cache:clear && \
		php artisan config:clear && \
		# php artisan migrate && \
		chmod -R 777 storage

CMD ["php-fpm", "-F"]