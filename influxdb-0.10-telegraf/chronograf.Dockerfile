FROM ubuntu:14.04
RUN apt-get -y install wget
RUN wget https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_0.10.0-rc1_amd64.deb
RUN dpkg -i chronograf_0.10.0-rc1_amd64.deb
WORKDIR /opt/chronograf
ENV CHRONOGRAF_BIND 0.0.0.0:80 
CMD ["/opt/chronograf/chronograf"]
