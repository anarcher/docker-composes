FROM ubuntu:14.04
RUN apt-get -y install wget
RUN wget http://get.influxdb.org/telegraf/telegraf_0.10.1-1_amd64.deb
RUN sudo dpkg -i telegraf_0.10.1-1_amd64.deb
ADD ./telegraf.toml /opt/telegraf/
WORKDIR /opt/telegraf
CMD ["telegraf","-config","/opt/telegraf/telegraf.toml"]
