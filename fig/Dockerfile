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
RUN pip install -r evething/requirements.txt

USER evething
