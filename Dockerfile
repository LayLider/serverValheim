$ mkdir -p $HOME/valheim-server/config/worlds $HOME/valheim-server/data
# copy existing world
$ docker run -d \
    --name valheim-server \
    --cap-add=sys_nice \
    --stop-timeout 120 \
    -p 2456-2457:2456-2457/udp \
    -v $HOME/valheim-server/config:/config \
    -v $HOME/valheim-server/data:/opt/valheim \
    -e SERVER_NAME="GOPAVALHEIM" \
    -e WORLD_NAME="GOPAVALHEIM" \
    -e SERVER_PASS="H4L2024" \
    lloesche/valheim-server