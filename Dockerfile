FROM postgres:10-alpine
MAINTAINER guox@goodrain.com
ADD sql/*.sql /docker-entrypoint-initdb.d/
ENV TZ Aisa/Shanghai
ENV LANG en_US.utf8
ENV PGDATA /var/lib/postgresql/data
ENV PG_MAJOR 10
ENV PG_VERSION 10.11
VOLUME /var/lib/postgresql/data
EXPOSE 5432
