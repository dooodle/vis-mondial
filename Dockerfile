FROM postgres:11.1-alpine
ENV POSTGRES_PASSWORD=password
ADD ./dump.sql /docker-entrypoint-initdb.d
    
