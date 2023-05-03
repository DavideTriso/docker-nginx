#!/bin/bash

TAGS=("stable-alpine" "1.24.0-alpine")

for tag in "${TAGS[@]}"
do
	echo "  "
    echo "Start build of ${tag} ======================================================================================="
    docker build -t davidetriso/nginx:${tag} --build-arg TAG=$tag .
    echo "Built of ${tag} completed ==================================================================================="
    echo "  "
done

docker push --all-tags davidetriso/nginx
