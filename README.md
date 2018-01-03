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
- The `port number exposed by the container is 80`. Hence with the `–p` command, we are mapping the same port number to the `80 port number on our localhost`.
- The `–d` option is used to `run the container in detached mode`. This is so that the container can run in the background.
- If you go to port 80 of the Docker host in your web browser, you will now see that Apache is up and running.

# Source
[pdf of directions](https://www.tutorialspoint.com/docker/docker_tutorial.pdf)

# Pulling Images and Running Containers
You can also now pull Images from Docker Hub and run containers in powershell as you
would do in Linux. The following example will show in brief the downloading of the Ubuntu
image and running of the container off the image.
- The first step is to use the Docker pull command to pull the Ubuntu image from Docker
Hub.
  - `docker pull ubuntu`
- The next step is to run the Docker image using the following run command:
  - `docker run –it ubuntu /bin/bash`

---

# Dockerizing a Node.js web app
The goal of this example is to show you how to get a Node.js application into a Docker container. The guide is intended for development, and not for a production deployment. The guide also assumes you have a working Docker installation and a basic understanding of how a Node.js application is structured. We will be doing the following:
1. create a simple web application in Node.js
2. build a Docker image for that application
3. run the image as a container.

### Create the Node.js app
1. create `package.json`
```json
{
  "name": "docker_web_app",
  "version": "1.0.0",
  "description": "Node.js on Docker",
  "author": "First Last <first.last@example.com>",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  }
}
```
2. Install express by running: `npm install --save express`.  The `--save` flag creates a dependecies section inside your package.json with express added.
  - If you already know what version of express you want to use and have it added in package.json then just run `npm install`. If you are using npm version 5 *(run `npm --version` to check)* or later, this will generate a `package-lock.json` file which will be copied to your Docker image.
4. Create a `server.js` file that defines a web app using the Express.js framework:
```javascript 
'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello world\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
```

# Creating a Docker file
1. touch dockerfile
2. Then add the following to it
```
#The first thing we need to do is define from what image we want to build from. Here we will use the latest LTS (long term support) version carbon of node available from the Docker 

FROM node:carbon


# Next we create a directory to hold the application code inside the image, this will be the working directory for your application:

# Create app directory
WORKDIR /usr/src/app



# This image comes with Node.js and NPM already installed so the next thing we need to do is to install your app dependencies using the npm binary. Please note that if you are using npm version 4 or earlier a package-lock.json file will not be generated.

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production



To bundle your app's source code inside the Docker image, use the COPY instruction:

# Bundle app source
COPY . .
Your app binds to port 3000 so you'll use the EXPOSE instruction to have it mapped by the docker daemon:

EXPOSE 3000



# Last but not least, define the command to run your app using CMD which defines your runtime. Here we will use the basic npm start which will run node server.js to start your server:

CMD [ "npm", "start" ]

```

### Create dockerignore file
`touch .dockerignore`
- add to the dockerignore file the following lines
```
node_modules
npm-debug.log
```
- This will prevent your local modules and debug logs from being copied onto your Docker image and possibly overwriting modules installed within your image

### Building your image
Go to the directory that has your Dockerfile and run the following command to build the Docker image. The -t flag lets you tag your image so it's easier to find later using the docker images command:
 - `docker build -t <your username>/node-web-app .`
 - In my case: `docker build -t michael/node-web-app .`

### Running your image
Running your image with `-d` runs the container in detached mode, leaving the container running in the background. The `-p` flag redirects a public port to a private port inside the container. Run the image you previously built:
 - `docker run --name node_web_instance -p 49160:3000 -d <your username>/node-web-app`
 - In my case: `docker run --name node_web_instance -p 49160:3000 -d michael/node-web-app .`

### Navigate to Hosted Page
`docker ps` outputs the follow:
```
        0.0.0.0:49160->3000/tcp   node_web_instance
```
Type `0.0.0.0:49160` in your browser to see your app hosted with express.

#### Note: 
Docker images are some what large.  If you get stuck docker --help will teach you everything you need to know about docker.  Learn how to remove images using docker --help if you have no space left.

