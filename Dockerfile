FROM centos:centos6
MAINTAINER yifeng.huang@outlook.com

export http_proxy="http://proxy.houston.hpecorp.net:8080"
export https_proxy="http://proxy.houston.hpecorp.net:8080"

RUN yum -y update
RUN echo "We are fine!"

EXPOSE 80

CMD [ "/bin/bash" ]
