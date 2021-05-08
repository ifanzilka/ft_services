# os
FROM alpine:3.12

# ports
EXPOSE 21 21048

# update
RUN apk update && apk upgrade

# installs
RUN apk add wget openssl sudo
RUN apk add vsftpd 

# openrc
RUN apk add openrc
RUN mkdir -p /run/openrc
RUN touch /run/openrc/softlevel

# хранилище БД (внутри серверы)
VOLUME [ "/home/ftps" ]


# add user
#RUN adduser --home "/home/ftps/admin" -D admin && echo "admin:admin" | chpasswd
#RUN adduser  -D admin1 && echo "admin1:admin1" | chpasswd

#Script for ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/pure-ftpd.pem \
    -out /etc/ssl/private/pure-ftpd.pem \
    -subj "/C=RU/ST=Tatarstan/L=Kazan/O=21/OU=School/CN=localhost"


#RUN mkdir -p /var/log/ftp
#RUN touch /var/log/ftp/xferlog
#RUN touch /var/log/vsftpd.log

# copies
COPY ./srcs/vsftpd.conf /etc/vsftpd/
RUN chmod -R 777        /etc/vsftpd/vsftpd.conf

WORKDIR /
COPY ./srcs/start.sh /

# start
CMD ["sh", "start.sh"]
