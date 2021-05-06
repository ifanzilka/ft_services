#!/bin/sh
#openrc
# for ssh
rc-service sshd start
nginx -g 'daemon off;'
