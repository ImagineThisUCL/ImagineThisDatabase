#!/bin/bash
docker build -t imaginethis_postgresql .
docker run --rm -d -P --name imaginethis_container imaginethis_postgresql
docker run --rm -t -i --link imaginethis_container:imaginethis_local imaginethis_postgresql bash -c 'psql -h $IMAGINETHIS_LOCAL_PORT_5432_TCP_ADDR -p $IMAGINETHIS_LOCAL_PORT_5432_TCP_PORT -d docker -f CreateDB.sql -U docker --password'