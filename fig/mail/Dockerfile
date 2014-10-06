FROM elsdoerfer/exim-sender

MAINTAINER Rob Haswell <rob@clusterhq.com>

ADD fix-resolv-conf /mail
RUN chmod +x /mail
ENV ALLOWED_HOSTS *

ENTRYPOINT ["/mail"]
