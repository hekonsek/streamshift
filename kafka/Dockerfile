FROM openjdk:8u131-jre

MAINTAINER hekonsek@gmail.com

RUN curl http://ftp.ps.pl/pub/apache/kafka/0.10.2.1/kafka_2.12-0.10.2.1.tgz | tar xvz
RUN mv /kafka_2.12-0.10.2.1 /usr/kafka_2.12-0.10.2.1

ADD kafka.sh /usr/kafka_2.12-0.10.2.1/

RUN chgrp -R 0 /usr/kafka_2.12-0.10.2.1/ && chmod -R g+rwX /usr/kafka_2.12-0.10.2.1/

EXPOSE 9092

ENTRYPOINT ["/usr/kafka_2.12-0.10.2.1/kafka.sh"]