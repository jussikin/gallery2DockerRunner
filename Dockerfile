FROM php:5.6-apache
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions  mysql
RUN echo "error_reporting = E_ALL & ~E_STRICT & ~E_DEPRECATED" > /usr/local/etc/php/conf.d/disable-deprecations.ini
RUN ln -s  /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load 
RUN apt-get update
RUN apt-get install imagemagick netpbm jhead -y
