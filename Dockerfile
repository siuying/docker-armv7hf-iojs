FROM mazzolino/armhf-ubuntu:14.04

ENV IOJS_VERSION 1.6.1

RUN apt-get install -y curl \
  && curl -SLO "https://iojs.org/dist/v$IOJS_VERSION/iojs-v$IOJS_VERSION-linux-armv7l.tar.gz" \
  && tar -xzf "iojs-v$IOJS_VERSION-linux-armv7l.tar.gz" -C /usr/local --strip-components=1 \
  && apt-get purge -y --auto-remove curl \
  && rm "iojs-v$IOJS_VERSION-linux-armv7l.tar.gz"

CMD ["iojs"]
