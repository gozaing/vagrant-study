#!/usr/bin/env bash

#CoreOS内のDockerの設定スクリプト
mkdir /pgsql
docker run -d -p 5432:5432 -v /home/fumio/o2o2/pgsql:/var/lib/postgresql/data:rw --name pg-srv postgres
docker run -itd -P -v /app:/data/http:rw -v /logs:/data/logs:rw -p 80:80 --name nginx-laravel --link pg-srv:pg-srv ftakebayashi/nginx-laravel
