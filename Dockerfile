FROM postgres:alpine

COPY *.sql /docker-entrypoint-initdb.d/
# COPY ./mock-data/*.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_PASSWORD="incorrect"
ENV POSTGRES_USER="imaginethis"
ENV POSTGRES_DB="imaginethis"

VOLUME /var/lib/postgresql/data

EXPOSE 5432
