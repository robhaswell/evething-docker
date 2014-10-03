# Dockerfile for EVEthing
# (https://github.com/madcowfred/evething)

FROM python:2.7

MAINTAINER Rob Haswell <rob@clusterhq.com>

RUN adduser --system --ingroup staff evething

RUN mkdir -p /opt/evething
RUN chown evething /opt/evething
WORKDIR /opt

USER evething
RUN git clone git://github.com/madcowfred/evething.git

USER root
ADD requirements.txt /opt/requirements.txt
RUN pip install -r /opt/evething/requirements.txt
RUN pip install -r /opt/requirements.txt

USER evething
ADD local_settings.py /opt/evething/evething/local_settings.py

CMD ["/usr/local/bin/python", "/opt/evething/manage.py", "runfcgi", "host=0.0.0.0", "port=8080", "daemonize=false"]
