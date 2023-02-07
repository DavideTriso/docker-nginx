# Docker Nginx

Image to run Nginx apps in docker

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

Execute the `./build-and-push.sh` script to build and push the image Docker Hub at once.

## How to use

TODO