#!/bin/bash
# docker exec -it hadoop4 vi /usr/local/zookeeper/data/myid
# docker exec -it hadoop5 vi /usr/local/zookeeper/data/myid
# docker exec -it hadoop3 zkServer.sh start
# docker exec -it hadoop4 zkServer.sh start
# docker exec -it hadoop5 zkServer.sh start
# docker exec -it hadoop3 zkServer.sh status
# docker exec -it hadoop4 zkServer.sh status
# docker exec -it hadoop5 zkServer.sh status

# docker exec hadoop3 hadoop-daemon.sh start journalnode
# docker exec hadoop4 hadoop-daemon.sh start journalnode
# docker exec hadoop5 hadoop-daemon.sh start journalnode
# docker exec hadoop3 tail -100 /usr/local/hadoop/logs/hadoop--journalnode-hadoop3.log
# docker exec hadoop1 hdfs namenode -format
# docker exec -it hadoop1 scp -r /usr/local/hadoop/tmp/dfs/name hadoop2:/usr/local/hadoop/tmp/dfs/
# docker exec -it hadoop1 hadoop-daemon.sh start namenode
# docker exec -it hadoop2 hdfs namenode -bootstrapStandby
# docker exec -it hadoop2 hdfs zkfc -formatZK
docker exec -it hadoop1 start-dfs.sh