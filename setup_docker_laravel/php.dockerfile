# if you use apache you can use apt-get and use alpine cann't use apt package linux
FROM php:8.1-apache

RUN apt-get update -y && apt-get install -y openssl zip unzip git libonig-dev zlib1g-dev libpng-dev vim
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring exif pcntl bcmath gd && docker-php-ext-enable pdo_mysql
WORKDIR /var/www/html
COPY src /var/www/html
RUN composer install
CMD php artisan serve --host=0.0.0.0 --port=8181
EXPOSE 8181