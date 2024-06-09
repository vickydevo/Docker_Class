Date: 30/03/2024  Monday
Batch: LINGAYYAS, PSCMR
Class DEVOPS  [morning]  : 11:00am - 12:00am
--------------------------------------------
FROM
RUN
WORKDIR
COPY/ADD
MAINTAINER
ENTRYPOINT/CMD

Both are using for deployment purpose
ENTRYPOINT	--> It's not overridable
CMD			--> We can override 

CMD: 
This instruction in a Dockerfile specifies the command to run when the container starts. 
 It allows you to provide a default command and/or arguments for an executing container. If the Dockerfile contains multiple CMD instructions,
 only the last one will take effect.

only --CMD OVERRIDE CHECK
--------------------------
FROM amazonlinux
RUN yum update
CMD  [ "echo", "CMD hello world" ] 
------------------------------------
sudo docker build -t <image:tag> . 
sudo docker run <image_id> 
------------------------------
FROM ubuntu
MAINTAINER yourname
RUN apt-get update
ENTRYPOINT ["echo", "Hello World"]
----------------------------------------
sudo docker build -t <image:tag> . 
sudo docker run <image_id> 
sudo docker run <image_id> <write any string to override>

----------------------------------------------------
FROM ubuntu
RUN apt update -y
ENTRYPOINT [ "echo","ENTRYPOINT hello world" ] 
CMD [ "echo", "cmd devops class " ]  
--------------------------------------------




FROM ubuntu
MAINTAINER yourname
RUN apt-get update
ENTRYPOINT ["echo", "Hello World"]
CMD ["welcome to Helloworld"]



-------------------------------------------------
FROM amazonlinux  
RUN yum install java-1.8.0-amazon-corretto -y && java --version 


FROM amazonlinux
RUN yum update
ENTRYPOINT [ "echo","HELLO WORLD" ]
CMD [ "WELCOME TO CLASS" ] 




docker login 
    username 
    passwd

docker tag <image-name> your_repo/image-name
docker push your_repo/image-name