yum install -y epel-release
yum install -y java-1.8.0-openjdk wget vim

groupadd kafka
useradd -g kafka -d /opt/kafka -s /sbin/nologin kafka
groupadd zookeeper
useradd -g zookeeper -d /opt/zookeeper -s /sbin/nologin zookeeper

mkdir /var/lib/zookeeper
chown zookeeper. /var/lib/zookeeper

cd /opt
rm -r -f kafka
rm -r -f zookeeper

wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/kafka/2.1.0/kafka_2.12-2.1.0.tgz
wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/zookeeper/zookeeper-3.4.10/zookeeper-3.4.13.tar.gz

tar zxvf kafka_2.12-2.1.0.tgz
ln -s kafka_2.12-2.1.0 kafka
chown -R kafka:kafka /opt/zookeeper/*

tar xzf zookeeper-3.4.13.tar.gz
ln -s zookeeper-3.4.13 ./zookeeper
chown -R zookeeper:zookeeper /opt/zookeeper/*

cp kafka.service /etc/systemd/system/kafka.service
cp zookeeper.service /etc/systemd/system/zookeeper.service

systemctl daemon-reload
systemctl enable zookeeper.service
systemctl start zookeeper.service

systemctl daemon-reload
systemctl enable kafka.service
systemctl start kafka.service
