#! /bin/bash

docker network create app-network
docker run --network app-network -d --name mariadb -e MARIADB_ROOT_PASSWORD=juve mariadb:10.9.3-jammy
docker run --network app-network  -d -p 32703:5000 --name exo3 fyligrane/exo3:1.0.0
docker cp src/students.sql mariadb:/tmp
docker exec -it mariadb sh -c "mysql -u root -p < /tmp/students.sql"