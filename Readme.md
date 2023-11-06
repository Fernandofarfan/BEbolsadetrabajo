# Levantar localmente la aplicación

## Prerequisitos

1. Tener instalado Docker

## Acciones

1. Construir la imagen de la base de datos con Docker

   ```bash
      docker build -t be-bolsadetrabajo-db .
      ```
2. Levantar la imagen de la base de datos con Docker
   ```bash
    docker run --name be-bolsadetrabajo-db-container -p 3306:3306 be-bolsadetrabajo-db
   ```
3. Constuir la imagen de la aplicación php con Docker
   ```bash
   docker build -t be-bolsadetrabajo .
    ```
4. Levantar la imagen de la aplicación php con Docker
   ```bash
    docker run -p 8080:80 --name be-bolsadetrabajo-container be-bolsadetrabajo
   ```