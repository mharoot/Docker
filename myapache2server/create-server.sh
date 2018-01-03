# This creates a container with the name server_instance.  
# It is generally good practice to assign the name for the container or else you will need to deal with complex alphanumeric container IDs.

# this does not work
docker run --name server_instance  -p 8080:80 -d myapache2server

# this is just a warning to set ServerName but notice that the server ip is proved for you. In my case it was 172.17.0.2 , and if i type that in my browser i can see the apache message!
# myapache2server$ ./create-server.sh
#AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using # 172.17.0.2. Set the 'ServerName' directive globally to suppress this message