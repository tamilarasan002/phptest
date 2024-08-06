# Use the official PHP image with Apache
FROM php:7.4-apache

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Copy application files to the Apache document root
COPY . /var/www/html/

# Install PostgreSQL extension for PHP
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pgsql
