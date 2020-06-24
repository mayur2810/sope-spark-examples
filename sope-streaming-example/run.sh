#!/bin/bash
sleep 15
sope-spark-submit.sh --master local --cluster_mode false --packages "org.apache.spark:spark-sql-kafka-0-10_2.11:2.4.5"  --yaml_folders "/opt/examples/twitter-app"  --main_yaml_file twitter_streaming_analytics.yaml