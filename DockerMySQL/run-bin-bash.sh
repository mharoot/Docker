# We are using the sudo command to ensure that it runs with root access.
# Here, ubuntu is the name of the image we want to download from Docker Hub and install on our Ubuntu machine.
# it is used to mention that we want to run in interactive mode.
# /bin/bash is used to run the bash shell once ubuntu is up and running.
docker run -it myapache2server /bin/bash

