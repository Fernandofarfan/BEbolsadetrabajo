# Usa una imagen base de PHP
FROM php:8.2.4-apache

# Copia tu código fuente al contenedor
COPY . /var/www/html

# Expone el puerto 80 para el servidor web
EXPOSE 80

# Inicia el servidor web Apache
CMD ["apache2-foreground"]
