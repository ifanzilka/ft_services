FROM alpine:3.12

# update && upgrade
RUN apk update && \
    apk add nginx && \
    apk add openrc --no-cache &&\
    apk add vim


RUN mkdir -p /run/nginx

RUN mkdir -p /var/www/server
RUN echo "<h1>Hello world.</h1>" > /var/www/server/index.html;



#COPY ./srcs/nginx.conf /etc/nginx/sites-available/localhost
COPY ./srcs/default.conf /etc/nginx/conf.d
# т.к. nginx легко устанавливается много чего делает сам то это все не нужно
#RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/
#RUN unlink /etc/nginx/sites-enabled/default
#WORKDIR /etc/nginx/sites-available/
#COPY ./srcs/nginx.conf /etc/nginx/sites-available/nginx.conf
#RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled

#Script for ssl
WORKDIR ~
RUN apk add openssl
COPY ./srcs/ssl.sh .
RUN sh ssl.sh
RUN rm -rf ssl.sh

WORKDIR /
COPY ./srcs/start.sh /

EXPOSE 80 443 22
CMD ["sh" ,"start.sh"]