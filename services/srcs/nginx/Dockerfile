FROM alpine:3.12

# for telegraf
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# update && upgrade
RUN apk update && \
    apk add nginx && \
    apk add openrc --no-cache &&\
    apk add vim &&\
    apk add --no-cache openssl &&\
	apk add openssh
# rc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel
#rc-service rsyslog start
RUN openrc

 
RUN     apk add telegraf 

# Create folder for PID file
RUN mkdir -p /run/nginx


# Чтобы закинуть ключ для ssh
RUN mkdir .ssh

# добавили пользователя для проверки ssh
RUN adduser -D admin -G root && echo "admin:admin" | chpasswd

RUN mkdir -p /var/www/server
RUN echo "<h1>Hello world.</h1>" > /var/www/server/index.html;

# copy congig
COPY ./srcs/default.conf /etc/nginx/conf.d

#copy rsa_keygen
COPY ./srcs/authorized_keys .ssh/id_rsa


#Script for ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=RU/ST=Tatarstan/L=Kazan/O=21/OU=School/CN=localhost"

#Checks (for serv in pods) 

WORKDIR /
COPY ./srcs/check.sh /

WORKDIR /
COPY ./srcs/start.sh /

RUN chown -R admin:root /etc/ssh

EXPOSE 80 443 22
CMD ["sh" ,"start.sh"]
