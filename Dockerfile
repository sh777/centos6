FROM centos:centos6
MAINTAINER yifeng.huang@outlook.com

RUN yum -y update
RUN echo "We are fine!"

EXPOSE 80

CMD [ "/bin/bash" ]
