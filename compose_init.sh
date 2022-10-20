#! /bin/bash

docker-compose up -d
docker cp src/students.sql mariadb:/tmp
docker exec -it mariadb sh -c "mysql -u root -p < /tmp/students.sql"