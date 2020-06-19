#!/bin/bash
sleep 10
export CLASSPATH="/opt/twitter-connect/kafka-connect-twitter.jar"
connect-standalone.sh /opt/twitter-connect/connect-standalone.properties /opt/twitter-connect/twitter.source.properties