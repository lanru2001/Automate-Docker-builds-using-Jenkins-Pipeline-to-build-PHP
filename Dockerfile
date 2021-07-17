#Docker file

FROM php:7.0-apache

SHELL ["/bin/bash", "-c"]

RUN ln -s ../mods-available/{expires,headers,rewrite}.load /etc/apache2/mods-enabled/

RUN sed -e '/<Directory \/var\/www\/>/,/<\/Directory>/s/AllowOverride None/AllowOverride All/' -i /etc/apache2/apache2.conf

#COPY php.ini /usr/local/etc/php/
COPY src/ /var/www/html

EXPOSE 80
