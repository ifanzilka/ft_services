#!/bin/sh
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql --user=root -e "CREATE DATABASE wordpress; use wordpress"
mysql --user=root -e "CREATE DATABASE phpmyadmin; use phpmyadmin"
mysql -u root -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin'"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%'; FLUSH PRIVILEGES;"

sh usr/share/mariadb/mysql.server start
tail -f /dev/null