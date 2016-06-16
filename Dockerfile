FROM centos:6.6

MAINTAINER .

ENV http_proxy "http://proxy.houston.hpecorp.net:8080"
ENV https_proxy "http://proxy.houston.hpecorp.net:8080"

#RUN yum update -y && \
#yum install -y wget && \
#wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jre-7u80-linux-x64.rpm" && \
#yum localinstall -y /jre-7u80-linux-x64.rpm && \
#rm -f /jre-7u80-linux-x64.rpm && \
#yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

EXPOSE 22 8080 5433 5434 5444 5450 4803 4804 6543 6400 20084 8443 

# Define default command.
CMD ["bash"]
