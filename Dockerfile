# PHP 7 docker environement with alpine, nginx, php7

# Alpine base
FROM alpine:latest
MAINTAINER Rohit Hazra <rohithzr@live.com>

# Install
COPY install /install
RUN /bin/sh /install/install.sh

# App files
COPY index.php /application/index.php
WORKDIR /application

# Setup
COPY setup /setup
RUN /bin/sh /setup/setup.sh

# Run
EXPOSE 80
CMD ["runsvdir", "/etc/service"]