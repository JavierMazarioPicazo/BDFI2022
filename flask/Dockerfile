FROM python:3.8.8

COPY /practica_big_data_2019 /opt/flask
WORKDIR /opt/flask/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENV PROJECT_HOME=/opt/flask
CMD python resources/web/predict_flask.py