# ref sites:
# - https://medium.com/@vinodkrane/how-to-use-the-docker-container-with-jmeter-5dbf47aaa26d
# - https://tongiwei.com/jmeter/
# - https://hub.docker.com/_/openjdk/tags?page=1&name=jre-alpine.

# build on the top of Java image
#FROM openjdk:8-jre
FROM arm64v8/openjdk:8-jre

# JMeter Version
ENV JMETER_VERSION 5.5
ENV JMETER_HOME /opt/apache-jmeter-$JMETER_VERSION
ENV JMETER_PATH $JMETER_HOME/bin:$PATH
ENV PATH $JMETER_HOME/bin:$PATH

ENV http_proxy ""
ENV https_proxy ""

RUN mkdir -pv /opt
RUN mkdir -p /opt/test
RUN mkdir -p /opt/test/input/jmx
RUN mkdir -p /opt/test/input/testdata
RUN mkdir -p /opt/test/report/html
RUN mkdir -p /opt/test/report/jtl
RUN mkdir -p /opt/test/report/outputdata

# Download and unpack the JMeter tar file
RUN cd /opt \
 && wget https://downloads.apache.org/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz \
 && tar xzf apache-jmeter-$JMETER_VERSION.tgz \
 && rm apache-jmeter-$JMETER_VERSION.tgz

# Create a symlink to the jmeter process in a normal bin directory
RUN ln -s /opt/apache-jmeter-$JMETER_VERSION/bin/jmeter /usr/local/bin

# Copying custom property file
# COPY user.properties /opt/apache-jmeter-$JMETER_VERSION/bin/user.properties

# RUN yum -y install libXext
RUN apt-get update -y
RUN apt-get install -y libxext-dev
RUN apt-get install -y libxrender-dev
RUN apt-get install -y libxtst-dev

RUN apt-get install -y vim

# Indicate the default command to run
#CMD jmeter
CMD ["/bin/sh"]

# docker build -t jmeter:v1 .
