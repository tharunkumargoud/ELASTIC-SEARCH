1)Create an ec2 instance of type t2 medium with amazon linux as ami 

2)In the userdata coloumn install the dependencies like installing and starting docker service and git packages
    #!/bin/bash
    yum update -y
    yum install -y docker git
    systemctl start docker
    systemctl enable docker

3)select the default key pair and launch an ec2 instance where an iam role of session manager is attached to it.mention its name -ELS

4)After launching an e2 instance ,login to the server through Session manager ,launch a new session .

5)Become root user in the server
  sudo su -

6)Make a directory of name ELS
    ---#  mkdir els

7)Enter into the directory 
     ---#  cd els

 8)Create a new dockerfile with vi editor
    ---#  vi Dockerfile

 9)Enter the data that is required to create a docker image for an elastic search container

            FROM docker.elastic.co/elasticsearch/elasticsearch:7.12.1
            EXPOSE 9200
            ENV discovery.type=single-node

 10)Save and exit the vi editor and    

 11)Build the image by launching dockerfile
     ---# docker build -t my-els-image .

 12)check the images 
      ---# docker images

 13) Now run the container with image that was previously built.
     ---#  docker run -d -it -p 9200:9200 my-els-image

  14)Check the container status
     ---#   docker ps

  15)This will create the container with base image for elastic search running on port number 9200

  16)To access the container from browser ,open the port numbers 9200 9300 in security group of the ec2 instance and  save the changes .

  17)Select the ip address of the instance and add portnumber to it and hit it on the browser


 18)We will get the output the showing  status of container.
