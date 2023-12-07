# Automated-jenkins-pipeline-to-build-PHP-application

# Welcome to README file for dockerizing a simple PHP App
```bash
sudo docker build . -t your_docker_user_id/myphpapp
sudo docker images
sudo docker login
sudo docker push your_docker_user_id/myphpapp


# How to run application?
sudo docker run -p 8082:80 --rm --name myfirstApp1 your_docker_user_id/myphpapp

# if you would like to run on differet port 
sudo docker run -p 8092:80 --rm --name myfirstApp2 your_docker_user_id/myphpapp

# sample commands for reference:( you dont have to execute, please refer them)

sudo docker images 
sudo docker search ubuntu – search the image in docker registry
sudo docker pull ubuntu
sudo docker ps 
sudo docker run -it alpine /bin/sh  to run in interactive mode
sudo docker stop <container_id>
sudo docker rm  <container_id>
sudo docker rmi image_id --> To delete the images
sudo docker run alpine /bin/sh
sudo docker run -it alpine /bin/sh
sudo docker run alpine ls -l
sudo docker run -it --rm -p 8088:8080 tomcat
sudo docker run -d dockersamples/static-site
sudo docker stop 6a3884611cc6
sudo docker ps �> to know the running containers
sudo docker rm  6a3884611cc6
sudo docker run --name static-site -e AUTHOR="Your Name" -d -P dockersamples/static-site
sudo docker port static-site
sudo curl http://localhost:32768
sudo docker run --name static-site-2 -e AUTHOR="John Smith" -d -p 8080:80 dockersamples/static-site
```bash
