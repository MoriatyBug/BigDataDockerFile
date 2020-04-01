#!/bin/bash
docker stop `docker ps -a -q`
docker rm `docker ps -a -q`
docker run -d -p 50070:50070 --net=backend --name=hadoop1 --hostname=hadoop1 bigdata:1.0
docker run -d --net=backend --name=hadoop2 --hostname=hadoop2 bigdata:1.0
docker run -d  -p 16010:16010 --net=backend --name=hadoop3 --hostname=hadoop3 bigdata:1.0
docker run -d   --net=backend --name=hadoop4 --hostname=hadoop4 bigdata:1.0
docker run -d   --net=backend --name=hadoop5 --hostname=hadoop5 bigdata:1.0