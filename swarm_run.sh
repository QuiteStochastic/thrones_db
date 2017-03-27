#!/usr/bin/env bash

cd thrones_db_spring
mvn clean package
if [[ $? != 0 ]]
then
	cd ..
	return
fi
docker build -t thrones_db_spring .
cd ..

if [[ $? != 0 ]]
then
        return
fi


docker swarm init
docker deploy --compose-file swarm_compose.yml thrones_db


