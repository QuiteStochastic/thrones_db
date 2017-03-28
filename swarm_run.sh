#!/usr/bin/env bash

function returnIfFail()
{
	if [[ $1 != 0 ]]
	then
        	return
	fi
}



cd thrones_db_spring
mvn clean package; returnIfFail $?

docker build -t thrones_db_spring_image .
returnIfFail $?
cd ..


cd thrones_db_psql
docker build -t thrones_db_psql_image .
returnIfFail $?
cd ..




docker swarm init
docker deploy --compose-file swarm_compose.yml thrones_db


