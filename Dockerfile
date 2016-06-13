FROM centos:centos6
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN echo "We are fine!"

EXPOSE 80

CMD [ "/bin/bash" ]