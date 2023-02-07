#!/bin/bash

docker build -t davidetriso/nginx:latest .

docker push davidetriso/nginx:latest
