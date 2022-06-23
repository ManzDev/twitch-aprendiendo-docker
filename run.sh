# Creamos un contenedor basado en una imagen
docker run --rm --name app_nginx -p 8080:80 -v $(pwd)/web:/usr/share/nginx/html nginx
