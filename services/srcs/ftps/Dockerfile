# os
FROM alpine:3.12

# ports
EXPOSE 21 21048

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories

# update
RUN apk update && apk upgrade

# installs
RUN apk add wget openssl sudo
#RUN apk add pure-ftpd
RUN apk add vsftpd 

# openrc
RUN apk add openrc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel


# add user
RUN adduser -D admin && echo "admin:admin" | chpasswd


#Script for ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/pure-ftpd.pem \
    -out /etc/ssl/private/pure-ftpd.pem \
    -subj "/C=RU/ST=Tatarstan/L=Kazan/O=21/OU=School/CN=localhost"


RUN mkdir -p /var/log/ftp
RUN touch /var/log/ftp/xferlog
RUN touch /var/log/vsftpd.log

# copies
COPY ./srcs/vsftpd.conf /etc/vsftpd/
RUN chmod -R 777        /etc/vsftpd/vsftpd.conf

WORKDIR /
COPY ./srcs/start.sh /

# start
CMD ["sh", "start.sh"]
#CMD ["/usr/sbin/pure-ftpd", "-p 21048:21048 -P 199.168.99.115 -Y 2"]
#ENTRYPOINT vsftpd /etc/vsftpd/vsftpd.conf