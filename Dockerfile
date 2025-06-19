FROM php:8.1-cli

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y unzip git curl zlib1g-dev

RUN curl -o composer-setup.php https://getcomposer.org/installer \
    && php composer-setup.php \
    && mv composer.phar /usr/local/bin/composer \
    && rm composer-setup.php

RUN composer install

CMD ["php", "-S", "0.0.0.0:80", "-t", "."]
