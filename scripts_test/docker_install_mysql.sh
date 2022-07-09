#docker rmi mysql:8.0.29-oracle

#docker pull - could be rerun
docker pull mysql:8.0.29-oracle


# -e means to set the system env
docker run -d --name docker_mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=32565624 mysql:8.0.29-oracle
