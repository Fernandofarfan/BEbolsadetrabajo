# Levantar localmente la aplicación

## Prerequisitos
1. Tener instalado Docker

## Acciones

1. Constuir la imagen de la aplicación php con Docker
   ```bash
   docker build -t be-bolsadetrabajo .
    ```
2. Levantar la imagen de la aplicación php con Docker
   ```bash
    docker run -p 8080:80 --name be-bolsadetrabajo-container be-bolsadetrabajo
```