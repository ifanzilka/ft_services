minikube stop
minikube delete
minikube start --driver=virtualbox --cpus=4 --memory=4G
minikube addons enable dashboard
minikube addons enable metallb
# docker pull metallb/speaker:v0.8.2
# docker pull metallb/controller:v0.8.2
eval $(minikube -p minikube docker-env)
kubectl apply -f srcs/configmap.yaml
docker build -t nginx_image ./srcs/nginx/
kubectl apply -f srcs/nginx/nginx.yaml
echo "\033[32m"
echo "
█──█──████──███──█──█──██─██
██─█──█──────█───██─█───███
█─██──█─██───█───█─██────█
█──█──█──█───█───█──█───███
█──█──████──███──█──█──██─██

\033[37m
███──███
─█───█
─█───███
─█─────█
███──███

\\033[31m
████──███──████──████───██─██
█──█──█────█──█──█──██───███
████──███──████──█──██────█
█─█───█────█──█──█──██────█
█─█───███──█──█──████─────█
──────────────────────────█
"
echo "\033[37m"

minikube dashboard &