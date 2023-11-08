# start with the official Composer image and name it
FROM composer:latest AS composer

# Usa una imagen base de PHP
FROM php:8.2.4-apache

# Copia un archivo de configuración personalizado de PHP a la imagen
COPY ./php.ini /usr/local/etc/php/conf.d/

RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip \
    p7zip-full

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala la extensión `mysqli`
RUN docker-php-ext-install mysqli

# Copia el archivo composer.json y composer.lock al directorio de la imagen
COPY composer.json composer.lock /var/www/html/

# copy the Composer PHAR from the Composer image into the PHP image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Instala las dependencias utilizando Composer
RUN composer install

# Copia el contenido de tu proyecto al directorio de trabajo de la imagen
COPY . /var/www/html/

# Expone el puerto 80 para el servidor web
EXPOSE 80

# Inicia el servidor web Apache
CMD ["apache2-foreground"]
