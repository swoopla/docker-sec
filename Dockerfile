FROM debian:buster-slim

LABEL MAINTAINER "Swoopla <p.vibet@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y sec --no-install-recommends

ENTRYPOINT ["/usr/bin/sec"]
