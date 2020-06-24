Sope Spark SQL DSL Example
--------------------------

Instead of writing explicit function definitions that take a dataframe(s) and return a dataframe, an interface for composable SQL operations is provided by the sope library in the form of Scala DSL.
It allows us to write the SQL logic in a more expressible, concise, and readable manner.

The example demonstrates the application of this Scala DSL for the transformation of data and tries to generalize analysis on data groups with support for filters. 

Data: Stackoverflow developer survey data (2019) available under **Open Database License (ODbL)**.

Groupings performed: 
- Popular programming languages with distribution across developer experience 
- Popular programming languages with distribution across developer experience for developers that have used Apache Spark
- Popular integrated development environments with distribution across developer experience 
- Popular IDEs with distribution across developer experience for developers that have used Apache Spark
 
##Running the example:

A Zeppelin notebook has been used to perform the analysis. Please follow below steps to run:
- Run command 'docker-compose up' to start the Zeppelin server.
- Access the [zeppelin](http://localhost:8080) console
- Open the [stackoverflow_survey_analysis](http://localhost:8080/#/notebook/2F9KZ85KJ) notebook 

 
 Please refer https://mayur2810.github.io/sope/sope-spark/#com.sope.spark.sql.dsl.package for Scala Doc