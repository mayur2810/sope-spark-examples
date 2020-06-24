Sope Spark Yaml Interface Example
--------------------------
The Sope Spark Yaml interface is useful for the quick development of simple spark applications that can be submitted directly as an executable artifact. 
This example demonstrates a twitter streaming analytics application using the Yaml interface which performs windowing aggregation 
to calculate top mentions and hashtags for the provided time window.

##Running the example:
The docker environment creates uses a Kafka instance along with the [Eneco](https://github.com/Eneco/kafka-connect-twitter) twitter-connect library which connects to twitter API and ingests
the tweets on a Kafka topic. The twitter_streaming_analytics.yaml file contains the logic for streaming aggregations on the twitter data.
Please follow the below steps to run the example:
- Edit the twitter.source.properties file to update the following properties: twitter.consumerkey, twitter.consumersecret, twitter.token, twitter.secret, track.terms
  Note: You will need to create a twitter app to obtain the credentials. Please follow the instructions at https://developer.twitter.com/en/docs/basics/apps/overview to create one.
- Run command 'docker-compose up' to start the environment.
- Run command 'docker logs -f sse' to see the aggregation results on the console.