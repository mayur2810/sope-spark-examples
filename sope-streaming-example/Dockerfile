FROM openjdk:8

ENV SPARK_VERSION 2.4.5
ENV SPARK_URL https://mirror.softaculous.com/apache/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop2.7.tgz

RUN set -x \
    && curl -fSL "$SPARK_URL" -o /tmp/spark.tar.gz \
    && tar -xvf /tmp/spark.tar.gz -C /opt/ \
    && rm /tmp/spark.tar.gz*

RUN ln -s /opt/spark-$SPARK_VERSION-bin-hadoop2.7/conf /etc/spark
RUN cp /etc/spark/spark-defaults.conf.template /etc/spark/spark-defaults.conf
RUN cp /etc/spark/spark-env.sh.template /etc/spark/spark-env.sh
RUN mkdir /opt/spark-$SPARK_VERSION-bin-hadoop2.7/logs

ENV SPARK_PREFIX=/opt/spark-$SPARK_VERSION-bin-hadoop2.7
ENV SPARK_CONF_DIR=/etc/spark
ENV PATH $SPARK_PREFIX/bin/:$PATH
ENV PATH $SPARK_PREFIX/sbin/:$PATH

ENV SPARK_HOME=/opt/spark-$SPARK_VERSION-bin-hadoop2.7
ENV SOPE_LIB https://jitpack.io/com/github/mayur2810/sope/sope-etl/v1.6/sope-etl-v1.6.zip

RUN set -x \
    && curl -fSL "$SOPE_LIB" -o /tmp/sope-spark.zip \
    && unzip /tmp/sope-spark.zip -d "/opt/sope-spark/" \
    && rm /tmp/sope-spark.zip*

ENV PATH /opt/sope-spark/sope-etl/bin/:$PATH

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]