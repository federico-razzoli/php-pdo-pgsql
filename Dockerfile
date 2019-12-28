FROM php:7.4-apache

# NOTE: update this before building!
LABEL build_date="2019-12-28"

# Metadata
LABEL org.opencontainers.image.title="PHP w PDO PostgreSQL"
LABEL org.opencontainers.image.description="Apache and PHP with PDO PostgreSQL driver"
LABEL org.opencontainers.image.version="1.0"
LABEL org.opencontainers.image.authors="Federico Razzoli <hello@federico-razzoli.com>"
LABEL org.opencontainers.image.vendor="Federico Razzoli <hello@federico-razzoli.com>"
LABEL org.opencontainers.image.created="2019-12-27"

RUN \
    set -x && \
    apt-get -y update && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql


