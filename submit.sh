#!/bin/bash

export SPARK_MASTER_URL=spark://${SPARK_MASTER_NAME}:${SPARK_MASTER_PORT}
export SPARK_HOME=/spark
export SPARK_SQL_VERSION=spark-sql-kafka-0-10_2.11:2.4.0

bash /spark/bin/spark-submit --master ${SPARK_MASTER_URL} \
--class es.upm.dit.ging.predictor.MakePrediction \
--packages org.mongodb.spark:mongo-spark-connector_2.11:2.3.2,org.apache.spark:${SPARK_SQL_VERSION} \
${SPARK_APPLICATION_JAR_LOCATION}