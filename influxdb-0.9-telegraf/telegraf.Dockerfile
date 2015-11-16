FROM ubuntu:14.04
RUN apt-get -y install wget
RUN wget http://get.influxdb.org/telegraf/telegraf_0.2.0_amd64.deb 
RUN dpkg -i telegraf_0.2.0_amd64.deb
ADD ./telegraf.toml /opt/telegraf/
WORKDIR /opt/telegraf
CMD ["/opt/telegraf/telegraf","-config","/opt/telegraf/telegraf.toml"]
