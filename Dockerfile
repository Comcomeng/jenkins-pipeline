FROM php:8.1-cli
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y unzip git
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN composer install
CMD ["php", "index.php"]
