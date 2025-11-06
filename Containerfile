# SPDX-FileCopyrightText: © 2025 Nfrastack <code@nfrastack.com>
#
# SPDX-License-Identifier: MIT

ARG \
    BASE_IMAGE

FROM ${BASE_IMAGE}

LABEL \
        org.opencontainers.image.title="Wordpress" \
        org.opencontainers.image.description="Containerized Content management system and blogging platform" \
        org.opencontainers.image.url="https://hub.docker.com/r/nfrastack/wordpress" \
        org.opencontainers.image.documentation="https://github.com/nfrastack/container-wordpress/blob/main/README.md" \
        org.opencontainers.image.source="https://github.com/nfrastack/container-wordpress.git" \
        org.opencontainers.image.authors="Nfrastack <code@nfrastack.com>" \
        org.opencontainers.image.vendor="Nfrastack <https://www.nfrastack.com>" \
        org.opencontainers.image.licenses="MIT"

ENV \
    PHP_ENABLE_CREATE_SAMPLE_PHP=FALSE \
    PHP_MODULE_ENABLE_EXIF=TRUE \
    PHP_MODULE_ENABLE_GD=TRUE \
    PHP_MODULE_ENABLE_IGBINARY=TRUE \
    PHP_MODULE_ENABLE_IMAGICK=TRUE \
    PHP_MODULE_ENABLE_MYSQLI=TRUE \
    PHP_MODULE_ENABLE_REDIS=TRUE \
    PHP_MODULE_ENABLE_SHMOP=TRUE \
    PHP_MODULE_ENABLE_SIMPLEXML=TRUE \
    PHP_MODULE_ENABLE_XML=TRUE \
    PHP_MODULE_ENABLE_XMLREADER=TRUE \
    PHP_MODULE_ENABLE_ZIP=TRUE \
    NGINX_WEBROOT="/www/wordpress" \
    NGINX_SITE_ENABLED="wordpress" \
    IMAGE_NAME="nfrastack/wordpress" \
    IMAGE_REPO_URL="https://github.com/nfrastack/container-wordpress/"

COPY CHANGELOG.md /usr/src/container/CHANGELOG.md
COPY LICENSE /usr/src/container/LICENSE
COPY README.md /usr/src/container/README.md

RUN echo "" && \
    WORDPRESS_RUN_DEPS=" \
                            xmlstarlet \
                         " \
                         && \
    \
    source /container/base/functions/container/build && \
    container_build_log && \
    package update && \
    package upgrade && \
    package install \
                        WORDPRESS_RUN_DEPS \
                    && \
    php-ext prepare && \
    php-ext reset && \
    php-ext enable core && \
    curl -o /usr/local/bin/wp-cli https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp-cli && \
    package cleanup

COPY rootfs /
