FROM alpine:3.12

# update && upgrade
RUN apk update && \
    apk add nginx && \
    apk add openrc --no-cache &&\
    apk add vim &&\
    apk add openssh

RUN mkdir -p /run/nginx
# Чтобы закинуть ключ для ssh
RUN mkdir .ssh


# добавили пользователя для проверки ssh
RUN adduser -D admin -G root && echo "admin:admin" | chpasswd

RUN mkdir -p /var/www/server
RUN echo "<h1>Hello world.</h1>" > /var/www/server/index.html;


COPY ./srcs/default.conf /etc/nginx/conf.d
COPY ./srcs/authorized_keys .ssh/id_rsa


#Script for ssl
WORKDIR ~
RUN apk add openssl
COPY ./srcs/ssl.sh .
RUN sh ssl.sh
RUN rm -rf ssl.sh

WORKDIR /
COPY ./srcs/start.sh /

RUN chown -R admin:root /etc/ssh

EXPOSE 80 443 22
CMD ["sh" ,"start.sh"]