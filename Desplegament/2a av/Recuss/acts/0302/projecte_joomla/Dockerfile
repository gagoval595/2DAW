# Utilitza la imatge base de PHP amb Apache
FROM php:8.3-apache

# Instal·la extensions PHP necessàries
RUN docker-php-ext-install mysqli pdo_mysql

# Activa el mòdul rewrite d'Apache
RUN a2enmod rewrite

# Activa le mòdul mod_auth d'Apache
RUN a2enmod auth_basic

# Copia el fitxer php.ini al contenidor
COPY php-config/php.ini /usr/local/etc/php/php.ini