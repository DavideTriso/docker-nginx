# Docker Nginx

Image to run the Nginx webserver in docker with **auto-reloading on config and SSL certificates change**.

## Quick reference

### Build the image:

```
docker build -t davidetriso/nginx:[tagname-dir_name] ./[tagname-dir_name]
```

E.g.:

```
docker build -t davidetriso/nginx:nginx-stable ./nginx-stable
```

### Push image to Docker Hub

```
docker push davidetriso/nginx:tagname
```

E.g.:

```
docker push davidetriso/nginx:nginx-stable
```

###  Build and push

Execute the `./build-and-push.sh` script to build and push the image to Docker Hub at once.

## How to use this image

This image is created starting from the official Nginx Docker image. Look at the "How to use this image" section of the [official image readme](https://hub.docker.com/_/nginx) to learn how to configure and use this image.

## Auto-reloading

The image watches for changes in the `/etc/nginx/conf.d` and `/etc/letsencrypt/live` directories and reloads Nginx whenewer a file in this directories is added, deleted or updated.

The directories that are watched for changes can be changed by overriding the `INOTIFYWAIT_WATCH_DIRS`env variable. E.g.: 

```
INOTIFYWAIT_WATCH_DIRS="/etc/my/dir/one /etc/my/dir/two /etc/my/dir/three"
```
