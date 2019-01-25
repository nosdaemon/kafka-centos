# kafka-centos


## Configuration of Kafka Server 

vi /opt/kafka/config/server.properties

```
# Delete Topics (only test env)
delete.topic.enable = true
# Broker ID
broker.id=0
zookeeper.connect=localhost:2181
```

## Configuration of ZookeeperServer

vi /opt/zookeeper/conf/zoo.cfg

```
tickTime=2000
initLimit=10
syncLimit=5
clientPort=2181
dataDir=/var/lib/zookeeper

server.1=10.211.55.48:2888:3888
server.1=10.211.55.49:2888:3888
server.1=10.211.55.50:2888:3888

#max
ClientCnxns=60
# The number of snapshots to retain in dataDir
#autopurge.snapRetainCount=3
# Purge task interval in hours
# Set to "0" to disable auto purge feature
#autopurge.purgeInterval=1
```

