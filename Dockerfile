FROM tianon/debian:wheezy
ADD http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb /influxdb_latest_amd64.deb
RUN dpkg -i /influxdb_latest_amd64.deb
EXPOSE 8083 8086
CMD ["/usr/bin/influxdb", "-config=/opt/influxdb/shared/config.toml"]
