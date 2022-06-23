# Aprendiendo Docker

- [Capítulo 1: Instalación, bases y cliente de Docker](https://youtu.be/mEYHQgZ7iZU)
- [Capítulo 2: Contenedores y Dockerfiles](https://youtu.be/T_COTY2qS1w)

## Crear contenedores

- `docker run`: crea un contenedor
- `--rm`: borra el contenedor cuando «no tiene razón para vivir»
- `--name app_nginx`: le da un nombre al contenedor
- `-p <local-port>:<container-port>`: redirecciona (mapea) un puerto de la máquina local a un puerto del contenedor
- `-v <local-folder>:<container-folder>`: comparte una carpeta de la máquina local a una carpeta del contenedor de modo que su contenido está siempre sincronizado.
- `nginx`: Crea un contenedor basado en la imagen `nginx` con tag `latest` (por omisión).

> Este ejemplo ejecuta el comando nginx dentro del contenedor porque así se indica en la imagen de nginx. Si el comando termina, sale del contenedor y se cierra. Sino, se mantiene abierto.

Ejemplo (`run.sh`):

```bash
docker run --rm --name app_nginx -p 8080:80 -v $(pwd)/web:/usr/share/nginx/html nginx
```

## Crear imágenes

- `docker build`: crea una imagen
- `.`: busca un `Dockerfile` en la ruta actual
- `-t debian_mod:0.1`: establece nombre de la imagen `debian_mod` con tag `0.1`.

Ejemplo (`build.sh`)

```bash
docker build . -t debian_mod:0.1
```

## Otros

- El fichero `.dockerignore` ignora carpetas o ficheros y no los introduce en el contexto.
- El fichero `entrypoint.sh` es el script que se ejecuta al iniciar un contenedor de la imagen que hemos creado.

**NOTA**: Estos ejemplos son didácticos para aprender a utilizar docker. No suele ser lo ideal crear imágenes/contenedores con todo en el mismo sitio. Imágenes basadas en alpine suelen ser más ligeras.

