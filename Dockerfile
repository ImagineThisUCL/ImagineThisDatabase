FROM postgres:alpine

COPY *.sql /docker-entrypoint-initdb.d/
# COPY ./mock-data/*.sql /docker-entrypoint-initdb.d/
# build args
ARG POSTGRES_PASSWORD
ARG POSTGRES_USER
ARG POSTGRES_DB
# set build time environment using args
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_DB=${POSTGRES_DB}

VOLUME /var/lib/postgresql/data

EXPOSE 5432
