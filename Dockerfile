FROM daocloud.io/php:5.3-apache
#COPY src/ /var/www/html/
RUN apt-get update \
	&& apt-get install -y \
		zip zlib1g zlib1g-dev\
	&& docker-php-ext-install zlib \
    && docker-php-ext-configure zlib --with-zlib=/usr/include/ \
	&& chmod -R 777 /var/www/html
