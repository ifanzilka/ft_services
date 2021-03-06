# docker build -t nginx_image .
# kubectl apply -f nginx.yaml

docker build -t nginx_image ./srcs/nginx/
kubectl apply -f srcs/nginx/nginx.yaml

echo "\033[32m
███╗░░██╗░██████╗░██╗███╗░░██╗██╗░░██╗  ██╗░██████╗  ██████╗░███████╗░█████╗░██████╗░██╗░░░██╗
████╗░██║██╔════╝░██║████╗░██║╚██╗██╔╝  ██║██╔════╝  ██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗░██╔╝
██╔██╗██║██║░░██╗░██║██╔██╗██║░╚███╔╝░  ██║╚█████╗░  ██████╔╝█████╗░░███████║██║░░██║░╚████╔╝░
██║╚████║██║░░╚██╗██║██║╚████║░██╔██╗░  ██║░╚═══██╗  ██╔══██╗██╔══╝░░██╔══██║██║░░██║░░╚██╔╝░░
██║░╚███║╚██████╔╝██║██║░╚███║██╔╝╚██╗  ██║██████╔╝  ██║░░██║███████╗██║░░██║██████╔╝░░░██║░░░
╚═╝░░╚══╝░╚═════╝░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝  ╚═╝╚═════╝░  ╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░\033[37m
"