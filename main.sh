#!/sh/bin

host=$1

[ -z ${host} ] && echo "Missing host" >&2 && exit 1

socat UNIX-LISTEN:${SOCKET_PATH},fork,reuseaddr,unlink-early TCP:${host}
