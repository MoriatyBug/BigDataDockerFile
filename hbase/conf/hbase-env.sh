
export JAVA_HOME=/usr/java/default
export HBASE_MANAGES_ZK=false
export HBASE_CLASSPATH=/usr/local/hadoop/etc/hadoop

export HBASE_OPTS="-XX:+UseConcMarkSweepGC"

export HBASE_MASTER_OPTS="$HBASE_MASTER_OPTS -XX:PermSize=128m -XX:MaxPermSize=128m"
export HBASE_REGIONSERVER_OPTS="$HBASE_REGIONSERVER_OPTS -XX:PermSize=128m -XX:MaxPermSize=128m"