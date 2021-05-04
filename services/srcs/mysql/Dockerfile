FROM alpine:3.12
EXPOSE 3306

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# update && upgrade
RUN apk update && \
    apk add openrc --no-cache &&\
    apk add vim

RUN apk add openrc telegraf mariadb mariadb-common mariadb-client

RUN openrc && touch /run/openrc/softlevel

## copy sh
WORKDIR /
COPY ./srcs/start.sh /

ENTRYPOINT sh start.sh