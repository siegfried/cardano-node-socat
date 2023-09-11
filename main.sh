#!/sh/bin

host=$1

[ -z ${host} ] && echo "Missing host" >&2 && exit 1

echo "Listening..."
echo "SOCKET_PATH: ${SOCKET_PATH}"
echo "HOST: ${host}"

socat UNIX-LISTEN:${SOCKET_PATH},fork,reuseaddr,unlink-early TCP:${host}
