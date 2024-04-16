ARG PHP_VERSION=8.2
ARG DISTRO="alpine"

FROM docker.io/tiredofit/nginx-php-fpm:${PHP_VERSION}-${DISTRO}
LABEL maintainer="Dave Conroy (github.com/tiredofit)"

ENV PHP_ENABLE_CREATE_SAMPLE_PHP=FALSE \
    PHP_ENABLE_EXIF=TRUE \
    PHP_ENABLE_GD=TRUE \
    PHP_ENABLE_IGBINARY=TRUE \
    PHP_ENABLE_IMAGICK=TRUE \
    PHP_ENABLE_MYSQLI=TRUE \
    PHP_ENABLE_REDIS=TRUE \
    PHP_ENABLE_SHMOP=TRUE \
    PHP_ENABLE_SIMPLEXML=TRUE \
    PHP_ENABLE_XML=TRUE \
    PHP_ENABLE_XMLREADER=TRUE \
    PHP_ENABLE_ZIP=TRUE \
    NGINX_WEBROOT="/www/wordpress" \
    NGINX_SITE_ENABLED="wordpress" \
    IMAGE_NAME="tiredofit/wordpress" \
    IMAGE_REPO_URL="https://github.com/tiredofit/docker-wordpress/"

RUN source /assets/functions/00-container && \
    set -x && \
    package update && \
    package upgrade && \
    package install xmlstarlet && \
    curl -o /usr/bin/wp-cli https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/bin/wp-cli && \
    package cleanup

COPY install/ /
