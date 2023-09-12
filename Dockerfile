FROM alpine:3.18.3

RUN apk add --no-cache socat

ENV SOCKET_PATH /ipc/node.socket
ENV HOST 127.0.0.1:3000

ENTRYPOINT socat UNIX-LISTEN:${SOCKET_PATH},fork,reuseaddr,unlink-early TCP:${HOST}
