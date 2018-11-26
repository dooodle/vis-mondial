# PostgreSQL database to be used for testing

This database is small enough that it can be
used as a simple fixture for the first iterations
of the visualisation developments.

The database is brought up as docker image which
recreates the database as it starts by using
the sql file created by pjm.

[TODO] Provide details etc about MONDIAL database so readers
know providence.

## Next steps...

This database will be added to the k8s environment currently
being setup on Digital Ocean.

### Using locally if you want to explore


## the docker file can be built for example like this

```
vis-mondial -> docker build -t vis-mondial .
```

and then run like this

```
docker run -p 5432:5432 vis-mondial 

...<snip snip>...

PostgreSQL init process complete; ready for start up.

2018-11-26 22:03:38.474 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
2018-11-26 22:03:38.474 UTC [1] LOG:  listening on IPv6 address "::", port 5432
2018-11-26 22:03:38.480 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
2018-11-26 22:03:38.495 UTC [43] LOG:  database system was shut down at 2018-11-26 22:03:38 UTC
2018-11-26 22:03:38.503 UTC [1] LOG:  database system is ready to accept connections
```

which will leave the database running with a datbase ready to accept connections.

## which you could connect to like this

```
vis-mondial -> psql --host=0.0.0.0 --username=postgres
Password for user postgres: 
psql (10.5, server 11.1)
WARNING: psql major version 10, server major version 11.
         Some psql features might not work.
Type "help" for help.

postgres=# \dt+
                             List of relations
 Schema |        Name         | Type  |  Owner   |    Size    | Description 
--------+---------------------+-------+----------+------------+-------------
 public | airport             | table | postgres | 160 kB     | 
 public | borders             | table | postgres | 40 kB      | 
 public | city                | table | postgres | 296 kB     | 
 public | city_local_name     | table | postgres | 64 kB      | 
 public | city_other_name     | table | postgres | 64 kB      | 
 public | city_population     | table | postgres | 648 kB     | 
 public | citylocal_name      | table | postgres | 0 bytes    | 
 public | cityother_name      | table | postgres | 0 bytes    | 
 public | continent           | table | postgres | 8192 bytes | 
 public | country             | table | postgres | 48 kB      | 
 public | country_local_name  | table | postgres | 40 kB      | 

```
