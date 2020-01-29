FROM php:7.4.2-fpm-alpine
RUN apk update; \
    apk upgrade;
RUN docker-php-ext-install mysqli
RUN apk add freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev
RUN docker-php-ext-install -j$(nproc) iconv
RUN docker-php-ext-configure gd --with-jpeg=/usr/include/ --with-freetype=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd
COPY php/php.ini /usr/local/etc/php/php.ini