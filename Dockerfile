FROM alpine:edge

WORKDIR /app

RUN set -xe && \
	echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
	apk add --update --no-cache ffmpeg@community && \
 	mkdir -p /app

CMD ["/bin/sh"]
