minikube stop
minikube delete
minikube start --driver=virtualbox --cpus=4 --memory=4G
minikube addons enable dashboard
minikube addons enable metallb
# docker pull metallb/speaker:v0.8.2
# docker pull metallb/controller:v0.8.2

minikube ssh 'sudo mkdir /mnt/mysql; sudo chmod 777 /mnt/mysql '
minikube ssh 'sudo mkdir /mnt/influxdb; sudo chmod 777 /mnt/influxdb '

eval $(minikube -p minikube docker-env)
kubectl apply -f srcs/configmap.yaml



#nginx
sh srcs/nginx/build_nginx.sh

# mysql
sh srcs/mysql/build_mysql.sh

#phpmyadmin
sh srcs/phpmyadmin/build_phpmyadmin.sh

#wordpress
sh srcs/wordpress/build_wordpress.sh

minikube dashboard &
