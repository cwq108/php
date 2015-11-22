FROM daocloud.io/php:5.3-apache
#COPY src/ /var/www/html/
COPY config/php.ini /usr/local/etc/php
RUN apt-get update \
	&& apt-get install -y \
		zip zlib1g zlib1g-dev\
	&& chmod -R 777 /var/www/html
