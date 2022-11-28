# Docker compose

## Despliegue del escenario

Se ha creado un script de shell que se encarga de arrancar el escenario. Ejecuta tanto el docker-compose.yml, como import_distances.sh para importar los datos al contenedor de mongodb. Para ello, ejecuta el siguiente comando en el directorio raíz del proyecto:

```sh
./start.sh
```
Una vez arrancado el escenario, se puede acceder al servidor web de Flask mediante la dirección http://localhost:5001/flights/delays/predict_kafka
# Apache Airflow