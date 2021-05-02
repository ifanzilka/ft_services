FROM alpine:3.12.3

# update && upgrade
RUN apk update && \
    apk add nginx && \
    apk add openrc --no-cache &&\
    apk add vim

WORKDIR /etc/nginx/sites-available/
COPY ./srcs/nginx.conf /etc/nginx/sites-available/nginx.conf
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled

#Script for ssl


RUN apk add openssl
COPY ./srcs/ssl.sh .
RUN sh ssl.sh
RUN rm -rf ssl.sh

WORKDIR /
COPY ./srcs/start.sh /

EXPOSE 80 443
CMD ["sh" ,"start.sh"]
