# kafka-centos


This is helpfiles for install Kafka and Zookeeper 

Some of the files as to bee updated, like versions etc.

## Configuration for java
vi /etc/profile

Add:

```
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64/jre"
```



## Configuration of Kafka Server 

vi /opt/kafka/config/server.properties

Change:

```
# Delete Topics (only test env)
delete.topic.enable = true
# Broker ID
broker.id=0
zookeeper.connect=localhost:2181
```



## Configuration of Zookeeper Server

vi /opt/zookeeper/conf/zoo.cfg

Change

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

