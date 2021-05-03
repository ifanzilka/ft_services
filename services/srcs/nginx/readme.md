#### 1) Берем стандартный конфиг из https://kubernetes.io/docs/concepts/workloads/pods/ и настриваем под себя
#### 2) Пытаемся собрать Docker образ nginx  
    
        Docker build -t nginx_image .
Получаем сообщение
        
        Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
#### 3)Нам нужно переключить Docker на работу с кластера
