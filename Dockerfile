FROM centos:6

MAINTAINER .

EXPORT http_proxy="http://proxy.houston.hpecorp.net:8080"
EXPORT https_proxy="http://proxy.houston.hpecorp.net:8080"

RUN yum update -y && \
yum install -y wget && \
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jre-7u80-linux-x64.rpm" && \
yum localinstall -y /jre-7u80-linux-x64.rpm && \
rm -f /jre-7u80-linux-x64.rpm && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
