ARG DEB_VERSION=11
FROM debian:${DEB_VERSION}

ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
ENV TZ=Europe/London

WORKDIR /var/www/html
RUN apt-get update && apt-get install -y neofetch nginx
COPY entrypoint.sh /

EXPOSE 8080/tcp
ENTRYPOINT ["sh", "/entrypoint.sh"]
