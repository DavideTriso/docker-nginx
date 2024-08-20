#!/bin/bash

TAGS=("1.27.1-alpine" "1.25.1-alpine" "1.24.0-alpine" "stable-alpine")

for tag in "${TAGS[@]}"
do
	echo "  "
    echo "Start build of ${tag} ======================================================================================="
    docker buildx build --push --tag davidetriso/nginx:${tag} --build-arg TAG=$tag --output type=image --platform linux/arm64,linux/amd64 .
    echo "Built of ${tag} completed ==================================================================================="
    echo "  "
done

docker push --all-tags davidetriso/nginx
