FROM php:7-apache

RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y rsync; \
    apt-get autoremove; \
    apt-get clean

#COPY config/php.ini /usr/local/etc/php/

COPY src/ /var/www/html/
