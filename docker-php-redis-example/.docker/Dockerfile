FROM php:7.1.0-apache

RUN pecl install redis-3.1.0 \
    && docker-php-ext-enable redis

VOLUME /var/www/html

EXPOSE 80