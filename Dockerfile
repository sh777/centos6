FROM centos:centos6
MAINTAINER yifeng.huang@outlook.com

RUN yum -y update; yum clean all
RUN echo "We are fine!"

EXPOSE 80

CMD [ "sudo /bin/bash" ]
