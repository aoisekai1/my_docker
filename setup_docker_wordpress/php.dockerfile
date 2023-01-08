FROM php:8.0-apache
WORKDIR /var/www/html

RUN apt update -y && apt install -y libmariadb-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql