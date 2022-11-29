#!/bin/bash
cd practica_big_data_2019/resources/airflow
pip install -r requirements.txt -c constraints.txt
sleep 10
export PROJECT_HOME=/Users/javiermazario/Desktop/PracticaFinalDocker/practica_big_data_2019
export AIRFLOW_HOME=~/airflow
mkdir $AIRFLOW_HOME/dags
mkdir $AIRFLOW_HOME/logs
mkdir $AIRFLOW_HOME/plugins

airflow users create \
    --username admin \
    --firstname Jack \
    --lastname  Sparrow\
    --role Admin \
    --email example@mail.org

airflow webserver --port 8080



