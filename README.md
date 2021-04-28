# ft_services




## Download & Install Macos

    curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

add in PATH :
    
    echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
    
    export        PATH="/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki"
    
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

  
