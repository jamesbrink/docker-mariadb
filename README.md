# MariaDB Docker Image

[![Build Status](https://travis-ci.org/jamesbrink/docker-mariadb.svg?branch=master)](https://travis-ci.org/jamesbrink/docker-mariadb) [![Docker Automated build](https://img.shields.io/docker/automated/jamesbrink/mariadb.svg)](https://hub.docker.com/r/jamesbrink/mariadb/) [![Docker Pulls](https://img.shields.io/docker/pulls/jamesbrink/mariadb.svg)](https://hub.docker.com/r/jamesbrink/mariadb/) [![Docker Stars](https://img.shields.io/docker/stars/jamesbrink/mariadb.svg)](https://hub.docker.com/r/jamesbrink/mariadb/) [![](https://images.microbadger.com/badges/image/jamesbrink/mariadb.svg)](https://microbadger.com/images/jamesbrink/mariadb "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/jamesbrink/mariadb.svg)](https://microbadger.com/images/jamesbrink/mariadb "Get your own version badge on microbadger.com")  


# About

Same as the official MariaDB (10.3.6), but supports multiple database on `docker run`. This is especially useful in `docker-compose` situations where 
you need multiple databases to be created.


# Usage

Simple example, starting the container with 3 databases.
```shell
$ docker run --name some-mariadb -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -e MYSQL_DATABASE=db1,db2,db3 -d jamesbrink/mariadb
```

## Environment Variables

Environment Variables:

