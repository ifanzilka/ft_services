#!/bin/sh
#openrc
# for ssh
openrc
rc-service sshd start
nginx -g 'daemon off;'
