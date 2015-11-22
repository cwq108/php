FROM daocloud.io/php:5.3-apache
#COPY src/ /var/www/html/
RUN apt-get update && apt-get install -y \
		openssh-server \
		zip \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    #&& docker-php-ext-install zlib \
	&& mkdir /var/run/sshd \
	&& echo "root:123456" | chpasswd
EXPOSE 22
