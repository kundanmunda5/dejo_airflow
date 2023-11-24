#install the apache airflow docker iamge
FROM apache/airflow:2.7.3-python3.8

USER root
RUN apt-get update && \
	apt-get -y install git && \
	apt-get clean

#USER airflow

