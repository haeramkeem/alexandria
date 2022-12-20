# FLUENTD + ELASTICSEARCH sidecar image
# @see https://github.com/fluent/fluentd-docker-image#alpine-version

# Build defaults
# You may have to use `docker build --build-arg ...` to overwrite the default values
ARG FLUENTD_VER=v1.14-1
FROM fluent/fluentd:$FLUENTD_VER
ARG ES_CLIENT_VER=7.17.1

# Runtime defaults
# You may have to use `docker run --env ...` to overwrite the defualt values
ENV SRC_FORMAT=none
ENV ES_HOST_PORT=9200
ENV SRC_TAG=mypod

USER root

RUN apk add --no-cache --update --virtual .build-deps \
    sudo build-base ruby-dev \
    && sudo gem install elasticsearch -v $ES_CLIENT_VER \
    && sudo gem install fluent-plugin-elasticsearch \
    && sudo gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

COPY fluent.conf /fluentd/etc/

USER fluent
