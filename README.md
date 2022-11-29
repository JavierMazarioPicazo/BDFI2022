# Predictor de vuelos BDFI2022

Proyecto final de la asignatura BDFI del Master Universitario en Ingeniería de Telecomunicación. Los componentes del grupo son:

- José Ignacio Mora Pérez.
- Javier Mazarío Picazo.

Los puntos que se han conseguido completar del proyecto son:

- Lograr el funcionamiento del proyecto sin realizar modificaciones.
- Ejecución del job de predicción con Spark Submit en lugar de IntelliJ.
- Despliegue del escenario completo usando Docker Compose.
- Entrenar el modelo mediante Apache Airflow.


## Docker compose

### Despliegue del escenario

En primer lugar, se debe clonar el repositiorio mediante el siguiente comando:

```sh
git clone https://github.com/JavierMazarioPicazo/BDFI2022.git
```

Con el objetivo de facilitar la ejecución del proyecto, se ha creado un script de shell que se encarga de arrancar el escenario. Ejecuta tanto el docker-compose.yml, como import_distances.sh para importar los datos al contenedor de mongodb. Para ello, se debe ejecutar el siguiente comando en el directorio raíz del proyecto:

```sh
./start.sh
```
Una vez arrancado el escenario, se puede acceder al servidor web de Flask mediante la dirección http://localhost:5001/flights/delays/predict_kafka

Para parar el escenario, se debe ejcutar el siguiente comando en el directorio raíz del proyecto:

```sh
./stop.sh
```

## Apache Airflow

Para la ejecución de Apache Airflow se han configurado una serie de scripts.

### Lanzamiento del servidor web de Airflow y su respectiva configuración:

El script desarrollado para esta ejecución `airflow_webserver.sh`, debe ser modificado para que funcione correctamente. Se debe modificar la ruta de la variable de entorno `PROJECT_HOME` con la ruta donde se haya clonado el repositorio. Una vez realizado esto, se debe ejecutar en el directorio raíz del proyecto:

```sh
./airflow_webserver.sh
```
Una vez realizado esto, podrá acceder a la interfaz web de Airflow a través de la dirección http://localhost:8080/

### Ejecución del Scheduler de Airflow:

Para este propósito se debe ejecutar el siguiente comando:

```sh
./airflow_scheduler.sh
```

### Adición y ejecución del DAG:

Para añadir el DAG `agile_data_science_batch_prediction_model_training`, se debe ejecutar en el directorio raíz el siguiente comando:

```sh
./airflow_addDAG.sh
```

Para ejecutar el DAG añadido, se debe ejecutar:

```sh
./airflow_trigger.sh
```
