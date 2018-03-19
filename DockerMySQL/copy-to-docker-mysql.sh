docker exec -i some-mysql sh -c 'cat > data-dump.sql' < c333final/comp490quiz1.sql


# If next uncommented line doesnt work below then uncomment it and
# do it manually within the container using the next 2 lines, commented out below:
# docker exec -it some-mysql bash
# mysql -uroot -pmy-secret-pw comp333midterm1 < data-dump.sql
docker exec -i some-mysql sh -c 'mysql -uroot -pmy-secret-pw comp333midterm1 < data-dump.sql'