FROM python:3.6-alpine

RUN apk add --update tzdata && \
apk add --update --no-cache --virtual .build-deps gcc musl-dev && \
pip3 install -U pip && \
pip3 install flexget transmissionrpc && \
apk del .build-deps gcc musl-dev

VOLUME /config /torrents

EXPOSE 3539 3539/tcp

COPY config.example.yml /
COPY init.sh/ /
WORKDIR /config
CMD ["/init.sh"]
