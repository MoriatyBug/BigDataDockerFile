#!/bin/bash
docker stop `docker ps -a -q`
docker start hadoop1 hadoop2 hadoop3 hadoop4 hadoop5
docker exec -it hadoop3 zkServer.sh start
docker exec -it hadoop4 zkServer.sh start
docker exec -it hadoop5 zkServer.sh start
docker exec -it hadoop3 zkServer.sh status
docker exec -it hadoop4 zkServer.sh status
docker exec -it hadoop5 zkServer.sh status
docker exec -it hadoop3 hadoop-daemon.sh start journalnode
docker exec -it hadoop4 hadoop-daemon.sh start journalnode
docker exec -it hadoop5 hadoop-daemon.sh start journalnode

docker exec -it hadoop1 hadoop-daemon.sh start datanode
docker exec -it hadoop2 hdfs namenode -bootstrapStanby
docker exec -it hadoop1 stop-dfs.sh
docker exec -it hadoop1 start-dfs.sh
# docker exec -it hadoop1 start-all.sh
docker exec -it hadoop1 jps

# docker exec -it hadoop3 stop-hbase.sh
docker exec -it hadoop3 start-hbase.sh
docker exec -it hadoop3 jps



