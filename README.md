# Docker Nginx

Image to run the Nginx webserver in docker with **auto-reloading on config and SSL certificates change**.

## Quick reference

### Build the image:

```
docker build -t davidetriso/nginx:[tagname] .
```

E.g.:

```
docker build -t davidetriso/nginx:nginx-stable .
```

> NOTE: By default the image is built `FROM` the `nginx:stable-alpine` official Docker image. However, if you want to build the image with a specific Nginx target version, you can change the TAG argument:

````
 docker build -t davidetriso/nginx:1.25.1-alpine --build-arg TAG=1.25.1-alpine . 
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

> NOTE: In the `./build-and-push.sh` script, you can include the Nginx image versions you wish to target by adding them to the TAGS array. The script will then proceed to build and push an image for each version stored in the array.

```
TAGS=("stable-alpine" "1.24.0-alpine" "1.25.1-alpine")
```

## How to use this image

This image is created starting from the official Nginx Docker image. Look at the "How to use this image" section of the [official image readme](https://hub.docker.com/_/nginx) to learn how to configure and use this image.

## Auto-reloading

The image watches for changes in the `/etc/nginx/conf.d` and `/etc/letsencrypt/live` directories and reloads Nginx whenewer a file in this directories is added, deleted or updated.

The directories that are watched for changes can be changed by overriding the `INOTIFYWAIT_WATCH_DIRS`env variable. E.g.: 

```
INOTIFYWAIT_WATCH_DIRS="/etc/my/dir/one /etc/my/dir/two /etc/my/dir/three"
```
