FROM    nginx:stable

USER    root

ENV     INOTIFYWAIT_WATCH_DIRS="/etc/nginx/conf.d /etc/letsencrypt/live"

COPY    ./docker-entrypoint.d/999-autoreload.sh /docker-entrypoint.d/999-autoreload.sh

RUN     chmod +x /docker-entrypoint.d/999-autoreload.sh \
        && mkdir -p /etc/letsencrypt/live \
        && apt-get update \
        && apt-get install -yq --no-install-recommends \
            apt-utils \
            inotify-tools