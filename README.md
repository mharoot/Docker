# Docker

### Docker Base Image
A base image is the image that is used to create all of your container images. Your base image can be an official Docker image, such as Centos, or you can modify an official Docker image to suit your needs, or you can create your own base image from scratch.

### Create a full Image using `tar`
In general, you’ll want to start with a working machine that is running the distribution you’d like to package as a parent image, though that is not required for some tools like Debian’s Debootstrap, which you can also use to build Ubuntu images.

- It can be as simple as this to create an Ubuntu parent image:

  - sudo debootstrap xenial xenial > /dev/null
  - sudo tar -C xenial -c . | docker import - xenial
  - a29c15f1bf7a
  - docker run xenial cat /etc/lsb-release
```bash
DISTRIB_ID=ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04 LTS"
```
#### [Create a simple parent image using scratch](https://docs.docker.com/engine/userguide/eng-image/baseimages/)

### Build your Docker File using the following instructions:
```docker
#This is a sample Image 
FROM ubuntu 
MAINTAINER demousr@gmail.com 

RUN apt-get update 
RUN apt-get install –y nginx 
CMD [“echo”,”Image created”] 
```
- The first line "#This is a sample Image" is a comment. You can add comments to the Docker File with the help of the # command

- The next line has to start with the FROM keyword. It tells docker, from which base image you want to base your image from. In our example, we are creating an image from the ubuntu image.

- The next command is the person who is going to maintain this image. Here you specify the MAINTAINER keyword and just mention the email ID.

- The RUN command is used to run instructions against the image. In our case, we first update our Ubuntu system and then install the nginx server on our ubuntu image.

- The last command is used to display a message to the user.

### Command `docker build`
This method allows the users to build their own Docker images.

#### Syntax
`docker build  -t ImageName:TagName dir`

#### Options
- `-t` − is to mention a tag to the image

- `ImageName` − This is the name you want to give to your image.

- `TagName` − This is the tag you want to give to your image.

- `Dir` − The directory where the Docker File is present.

#### Return Value
None

#### Example
`sudo docker build –t myimage:0.1 .`
Here, `myimage` is the name we are giving to the Image and `0.1` is the tag number we are giving to our image.  Since the Docker File is in the present working directory, we used `"."` at the end of the command to signify the present working directory.

---

# Building a Web Server Docker File
Using our ubuntu image we can install apache2 on it within the dockerfile.
```
FROM ubuntu 
RUN apt-get update 
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get clean 
EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]
```
- We are first creating our image to be from the ubuntu base image.

- Next, we are going to use the RUN command to update all the packages on the Ubuntu system.

- Next, we use the RUN command to install apache2 on our image.

- Next, we use the RUN command to install the necessary utility apache2 packages on our image.

- Next, we use the RUN command to clean any unnecessary files from the system.

- The EXPOSE command is used to expose port 80 of Apache in the container to the Docker host.

- Finally, the CMD command is used to run apache2 in the background.

#### To build your web server run: 
`sudo docker build –t=”mywebserver” .` 

#### To start your web server run:
`sudo docker run –d –p 80:80 mywebserver`

