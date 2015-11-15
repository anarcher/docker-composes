FROM ubuntu:14.04
RUN apt-get -y install wget
RUN wget https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_0.1.0_amd64.deb 
RUN dpkg -i chronograf_0.1.0_amd64.deb
WORKDIR /opt/chronograf
CMD ["/opt/chronograf/chronograf","-influx=http://172.17.42.1:8086","-bind=0.0.0.0:80"]
