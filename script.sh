#!/bin/bash
docker run -t -d --name imaginethis_local
docker build -t imaginethis_postgresql .
docker run --rm -d -P --name imaginethis_container imaginethis_postgresql
docker run --rm -t -i --link imaginethis_container:imaginethis_local imaginethis_postgresql bash
psql -h $PG_PORT_5432_TCP_ADDR -p $PG_PORT_5432_TCP_PORT -d docker -U docker --password