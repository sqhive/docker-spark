FROM java:8

ENV SPARK_VERSION=2.3.0
ENV HADOOP_VERSION=2.7

WORKDIR /

RUN wget -q http://mirror.ox.ac.uk/sites/rsync.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && tar -xvzf spark-*.tgz \
    && rm spark-*.tgz \
    && mv spark-* spark

ENV SPARK_HOME /spark
ENV SPARK_NO_DAEMONIZE true

WORKDIR /spark