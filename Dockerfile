# DOCKERFILE

# Imagen
FROM ubuntu

# Mantainet
MAINTAINER jobs_corp

# Actualización de la lista de fuentes del repositorio de aplicaciones por defecto
RUN apt-get update

# Instalar 
RUN apt-get -y install python3.5
RUN apt-get -y install python3-pip
RUN pip3 install --upgrade pip
RUN apt-get -y install libmpfr-dev
RUN pip3 install bigfloat
ADD bitcoin-price-prediction /home/josepplloo/bitcoin-price-prediction
RUN pip3 install -e /home/josepplloo/bitcoin-price-prediction
EXPOSE 27000-30000
