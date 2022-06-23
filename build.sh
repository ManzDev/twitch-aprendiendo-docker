# Creamos una imagen basado en la definición de un Dockerfile
docker build . -t debian_mod:0.1
docker run --rm --name debian_test -p 8080:80 debian_mod:0.1
