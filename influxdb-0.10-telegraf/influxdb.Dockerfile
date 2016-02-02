FROM ubuntu:14.04
RUN apt-get install -yq wget
RUN wget https://s3.amazonaws.com/influxdb/influxdb_0.10.0-0.rc1_amd64.deb 
RUN dpkg -i influxdb_0.10.0-0.rc1_amd64.deb
CMD  /usr/bin/influxd -pidfile /var/run/influxdb/influxd.pid -config /etc/influxdb/influxdb.conf

