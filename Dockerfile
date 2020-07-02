FROM alpine
EXPOSE 9116
RUN wget https://github.com/prometheus/snmp_exporter/releases/download/v0.18.0/snmp_exporter-0.18.0.linux-amd64.tar.gz
RUN tar -zxvf snmp_exporter-0.18.0.linux-amd64.tar.gz
WORKDIR ./snmp_exporter-0.18.0.linux-amd64/
CMD ["./snmp_exporter"]
