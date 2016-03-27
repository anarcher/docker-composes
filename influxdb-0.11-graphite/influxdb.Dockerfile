FROM ubuntu:14.04
RUN apt-get install -yq wget
RUN wget https://s3.amazonaws.com/influxdb/influxdb_0.11.0-1_amd64.deb
RUN dpkg -i influxdb_0.11.0-1_amd64.deb
ADD influxdb.conf /etc/influxdb/influxdb.conf
CMD  /usr/bin/influxd -pidfile /var/run/influxdb/influxd.pid -config /etc/influxdb/influxdb.conf

