# Start a mysql server instance
1. `docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag`
  - where `some-mysql` is the name you want to assign to your container, `my-secret-pw` is the password to be set for the MySQL root user and `tag` is the tag specifying the MySQL version you want.
  - example:
    - docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:latest

# Connect to MySQL from an application in another Docker container
1. This image exposes the standard MySQL port (3306), so container linking makes the MySQL instance available to other application containers. Start your application container like this in order to link it to the MySQL container:
2. `docker run --name some-app --link some-mysql:mysql -d application-that-uses-mysql`

# Connect to MySQL from the MySQL command line client
1. The following command starts another mysql container instance and runs the mysql command line client against your original mysql container, allowing you to execute SQL statements against your database instance:
2. ` docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"' `
  - where `some-mysql` is the name of your original mysql container.
3. This image can also be used as a client for non-Docker or remote MySQL instances:
  - `docker run -it --rm mysql mysql -hsome.mysql.host -usome-mysql-user -p`


docker run -it --link some-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'