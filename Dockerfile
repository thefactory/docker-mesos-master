# Mesos Master
#
# VERSION       1

FROM thefactory/mesos

MAINTAINER Mike Babineau mike@thefactory.com

USER root
EXPOSE 5050

ENTRYPOINT ["/usr/local/sbin/mesos-master"]