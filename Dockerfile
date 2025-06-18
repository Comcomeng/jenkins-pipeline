FROM php:8.1-cli

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y unzip git \
 && curl -sS https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer \
 && composer install

# Jalankan built-in server
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
