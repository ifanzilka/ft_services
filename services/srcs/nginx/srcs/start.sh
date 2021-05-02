#!/bin/bash
#nginx start
rc-update add nginx default
rc-service nginx start
#service mysql start
#service php7.3-fpm start
sh