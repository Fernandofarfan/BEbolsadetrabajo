# Usa una imagen base de PHP
FROM php:8.2.4-apache

# Copia un archivo de configuración personalizado de PHP a la imagen
COPY ./php.ini /usr/local/etc/php/conf.d/

# Instala la extensión `mysqli`
RUN docker-php-ext-install mysqli

# Copia el contenido de tu proyecto al directorio de trabajo de la imagen
COPY . /var/www/html/

# Expone el puerto 80 para el servidor web
EXPOSE 80

# Inicia el servidor web Apache
CMD ["apache2-foreground"]
