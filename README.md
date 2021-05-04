# ft_services

## Links:
https://www.notion.so/ft_services-e0700a527d0d45039388f65087c23b21

https://vk.com/swquinc

https://vk.com/forum42intra

## Download & Install Macos

    curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

add in PATH :
    
    echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
    
    export        PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/Users/bmarilli/.brew/bin"
    
Link:
        
        mkdir -p ~/goinfre/docker

Minikube:

        brew remove minikube
        rm -rf .minikube
        rm -rf .kube
        brew install minikube

Docker:

1)        

        rm -rf ~/Library/Containers/com.docker.docker
        ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker

2) DOWNLOAD DOCKER and VirtualBox IN MSC

Minikube:
        
        minikube start --vm-driver=virtualbox --memory 4096
Link 
       
       mv .minikube ./goinfre/minikube/
       ln -s ./goinfre/minikube/ ./.minikube


## Download & Install Linux

Minikube https://minikube.sigs.k8s.io/docs/start/

VirtualBox https://losst.ru/ustanovka-virtualbox-v-ubuntu-18-04
