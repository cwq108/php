FROM daocloud.io/php:5.3.29-apache
#COPY src/ /var/www/html/
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install iconv mcrypt mysqli\
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
    #\&& chmod -R 777 /var/www/html
