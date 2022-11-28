#!/bin/bash
docker compose up -d
sleep 20
docker exec mongod ./app/practica_big_data_2019/resources/import_distances.sh