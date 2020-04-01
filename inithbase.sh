#!/bin/bash
# docker exec -it hadoop3 zkServer.sh stop
# docker exec -it hadoop4 zkServer.sh stop
# docker exec -it hadoop5 zkServer.sh stop
# docker exec -it hadoop3 rm -rf $ZOOKEEPER_HOME/data/version-2
# docker exec -it hadoop4 rm -rf $ZOOKEEPER_HOME/data/version-2
# docker exec -it hadoop5 rm -rf $ZOOKEEPER_HOME/data/version-2
docker exec -it hadoop3 zkServer.sh start
docker exec -it hadoop4 zkServer.sh start
docker exec -it hadoop5 zkServer.sh start

# docker exec -it hadoop3 start-hbase.sh