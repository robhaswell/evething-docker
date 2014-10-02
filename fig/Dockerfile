# Dockerfile for EVEthing
# (https://github.com/madcowfred/evething)

FROM ubuntu

MAINTAINER Rob Haswell <rob@clusterhq.com>

RUN apt-get -qqy update
RUN apt-get -qqy upgrade

RUN adduser --system --ingroup staff evething

RUN apt-get install -qqy \
    curl \
    git \
    python-celery \
    python-dev \
    python-flup \
    python-memcache \
    python-pip \
    python-psycopg2 \
    python-redis \
    python-sqlite

RUN mkdir -p /opt/evething
RUN chown evething /opt/evething
WORKDIR /opt

RUN sudo -u evething git clone git://github.com/madcowfred/evething.git
RUN pip install -r evething/requirements.txt

USER evething
