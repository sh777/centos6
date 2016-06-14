FROM centos:6
MAINTAINER yifeng.huang@outlook.com

RUN export http_proxy="http://proxy.houston.hpecorp.net:8080"
RUN export https_proxy="http://proxy.houston.hpecorp.net:8080"

ADD test.sh /

# RUN yum -y update
# RUN echo "We are fine!"

EXPOSE 80
EXPOSE 8080
EXPOSE 5433
EXPOSE 6400
EXPOSE 20084
EXPOSE 8443

CMD ["/bin/bash", "/test.sh"] 
