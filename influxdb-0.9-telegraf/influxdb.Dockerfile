FROM ubuntu:14.04
RUN apt-get install -yq wget
RUN wget https://s3.amazonaws.com/influxdb/influxdb_0.9.5-rc2_amd64.deb
RUN sudo dpkg -i influxdb_0.9.5-rc2_amd64.deb

CMD  /usr/bin/influxd -pidfile /var/run/influxdb/influxd.pid -config /etc/influxdb/influxdb.conf

