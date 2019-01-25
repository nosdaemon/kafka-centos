yum install -y epel-release
yum install -y java-1.8.0-openjdk wget vim

groupadd kafka
useradd -g kafka -d /opt/kafka -s /sbin/nologin kafka

cd /opt
rm -r -f kafka

wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/kafka/2.1.0/kafka_2.12-2.1.0.tgz

tar zxvf kafka_2.12-2.1.0.tgz
ln -s kafka_2.12-2.1.0 kafka

cp kafka.service /etc/systemd/system/kafka.service
cp zookeeper.service /etc/systemd/system/zookeeper.service

systemctl daemon-reload
systemctl enable zookeeper.service
systemctl start zookeeper.service

systemctl daemon-reload
systemctl enable kafka.service
systemctl start kafka.service
