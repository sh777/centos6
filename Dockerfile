FROM centos:6
MAINTAINER yifeng.huang@outlook.com

RUN export http_proxy="http://proxy.houston.hpecorp.net:8080"
RUN export https_proxy="http://proxy.houston.hpecorp.net:8080"

RUN yum -y update
RUN echo "We are fine!"

EXPOSE 80

CMD [ "/bin/bash" ]
