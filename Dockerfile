ARG     TAG=stable-alpine

FROM    nginx:$TAG

USER    root

ENV     INOTIFYWAIT_WATCH_DIRS="/etc/nginx/conf.d /etc/letsencrypt/live"

COPY    ./docker-entrypoint.d/999-autoreload.sh /docker-entrypoint.d/999-autoreload.sh

RUN     chmod +x /docker-entrypoint.d/999-autoreload.sh \
        && mkdir -p /etc/letsencrypt/live \
        && apk update \
        && apk add --update --no-cache \
            inotify-tools