FROM wurstmeister/kafka

COPY twitter.source.properties /opt/twitter-connect/twitter.source.properties
COPY connect-standalone.properties /opt/twitter-connect/connect-standalone.properties
ENV KAFKA_TWITTER_CONNECT_LIB https://jitpack.io/com/github/Eneco/kafka-connect-twitter/0.1.13/kafka-connect-twitter-0.1.13-jar-with-dependencies.jar

RUN set -x \
    && curl -fSL "$KAFKA_TWITTER_CONNECT_LIB" -o /opt/twitter-connect/kafka-connect-twitter.jar


ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]