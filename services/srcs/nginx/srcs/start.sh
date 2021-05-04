#!/bin/sh
openrc
touch /run/openrc/softlevel
rc-status
# for ssh
rc-service sshd start
nginx -g 'daemon off;'