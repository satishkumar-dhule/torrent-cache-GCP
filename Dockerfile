FROM ghcr.io/linuxserver/webtop

RUN apk add --no-cache transmission

# ports and volumes
EXPOSE 3000
VOLUME /config