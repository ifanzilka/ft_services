#### 1) Берем стандартный конфиг из https://kubernetes.io/docs/concepts/workloads/pods/ и настриваем под себя
#### 2) Пытаемся собрать Docker образ nginx  
    
        Docker build -t nginx_image .
Получаем сообщение
        
        Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
#### 3)Нам нужно переключить Docker на работу с кластера
 
 Для этого используем команду (передадим перменные ENV)
        
        eval $(minikube docker-env)
#### 4) Пытаемся снова все собрать 
        Docker build -t nginx_image .
  У нас успешно все собирается      
#### 5) Запсук


        kubectl apply -f nginx.yaml
        kubectl get pods
        
При возникновении ошибок можем посмотреть logs
        
        kubectl logs nginx
        kubectl discribe nginx
        kubectl delete pods nginx
       
