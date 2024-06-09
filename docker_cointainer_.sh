Date: 27/03/2024  WEDNESDAY
Batch: LINGAYYAS, PSCMR
Class DEVOPS  [morning]  : 11:00am - 12:00am
--------------------------------------------

dockerhub signup , 

Check base images like nginx, ubuntu , nodejs tomcat,jenkins
<Docker Image>:<tag>

nginx:v1
	--> Developer did some changes
nginx:v2
	--> Developer did some more changes
nginx:v3

latest tag will take if you not going to provide

amazon- linux
	yum install docker -y 
        docker version
        sudo docker version
        systemctl docker status/start/stop
        or
	service docker start
	service docker status
ubuntu -linux
        sudo apt install docker.io -y
        docker version
        sudo docker version
        systemctl status docker
        systemctl start docker


Dockerfile  -->  Docker Image  -->  Docker container

docker pull nginx


	
Dockerfile:
A Dockerfile is a text file that contains instructions for building a Docker 


What is Docker Image? 
Docker Image can be compared to a template which is used to create Docker Containers. 
 They are the building blocks of a Docker Container. 
 These Docker Images are created using the build command.
 These Read only templates are used 

 image. It defines the environment inside a container, including what software to
    install, which files to copy into the container, and what commands to run when the container starts.



docker commands 
------------------

docker pull <image>:tag
docker images

docker run --name <container-name> -p <outbound>:<inbound>  <image/id> 
docker run -d --name <container-name> -p <outbound>:<inbound>  <image/id>

docker ps 
docker ps -a 
docker stop <container/id>

docker exec -it <container/id> /bin/bash
 
docker rm <container/id>


Components of a Dockerfile:

Base Image: Specifies the base image to build upon. It's the starting point for the container.

Instructions: Dockerfile consists of a series of instructions that are executed in order to build the image. Common instructions include:

FROM: Specifies the base image.
RUN: Executes commands inside the container during the build process.
COPY / ADD: Copies files from the host into the container.
WORKDIR: Sets the working directory for subsequent instructions.
EXPOSE: Specifies the ports on which the container listens.
CMD / ENTRYPOINT: Defines the command to run when the container starts.





# Use OpenJDK 1.8 as the base image
FROM openjdk:8

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file from the host into the container
COPY target/my-spring-boot-app.jar /app/

# Expose port 8080 (the default port for Spring Boot applications)

EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "my-spring-boot-app.jar"]



-p 8080:80 in the docker run command specifies the port mapping between host and container, EXPOSE 80 in the Dockerfile simply documents that the container will listen on port 80. The actual port mapping and exposure are handled by the -p option during container runtime, not by the EXPOSE instruction during image build time.