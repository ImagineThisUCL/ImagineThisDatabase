export CONTAINER_NAME=imaginethis_db
export POSTGRES_USER=imaginethis
export POSTGRES_DB=imaginethis

# Connect to the DB container from a client on your local machine
# Password to connect into the DB is in Dockerfile
docker exec -it "$CONTAINER_NAME" psql -h localhost -p 5432 -d "$POSTGRES_DB" -U "$POSTGRES_USER" --password