FROM php:8.3.12-apache

# Habilitar mod_rewrite
RUN a2enmod rewrite

# Instal·lar dependències necessàries
RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libwebp-dev \
        nano \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install pdo pdo_mysql gd opcache

# Eliminar fitxers enllaçats prèviament (si existeixen)
RUN rm -f /etc/apache2/sites-enabled/000-default.conf \
          /etc/apache2/sites-enabled/default-ssl.conf

# Crear enllaços simbòlics
RUN ln -s /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-enabled/000-default.conf \
    && ln -s /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf
