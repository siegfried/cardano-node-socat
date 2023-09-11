FROM alpine:3.18.3

RUN apk add --no-cache socat

ENV SOCKET_PATH /ipc/node.socket

WORKDIR /app
COPY main.sh main.sh

ENTRYPOINT ["sh", "main.sh"]
