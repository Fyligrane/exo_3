#! /bin/bash

docker stop exo3 mariadb
docker rm exo3 mariadb
docker network rm app-network