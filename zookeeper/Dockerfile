FROM java

MAINTAINER hekonsek@gmail.com

RUN curl http://ftp.ps.pl/pub/apache/kafka/0.10.2.1/kafka_2.12-0.10.2.1.tgz | tar xvz

EXPOSE 2181

ENTRYPOINT ["/kafka_2.12-0.10.2.1/bin/zookeeper-server-start.sh", "/kafka_2.12-0.10.2.1/config/zookeeper.properties"]