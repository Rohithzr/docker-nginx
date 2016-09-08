# rohithzr/docker-nginx-php7

This is a base [Docker image](https://www.docker.com/) to use as a web server with Nginx and PHP 7.
Nginx and PHP are both preconfigured and ready to handle your files.

## Usage

Place your application files in a directory (here I am placing it in public directory)

Create a new Dockerfile
```
FROM rohithzr/docker-nginx-php7
COPY public/ /applications/
```

Build your new image

```
docker build -t firm/project:latest .
```

Run your Image
```
docker run -p 80:80 -d firm/project:latest
```