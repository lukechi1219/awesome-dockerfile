# ref sites:
# - https://blog.51cto.com/u_15076234/4273924
# - https://github.com/oliver006/redis_exporter
# - --version

# build on the top of Java image
#FROM openjdk:8-jre
FROM arm64v8/openjdk:8-jre

# redis_exporter Version
ENV REDIS_EXPORTER_VERSION 1.46.0.linux-arm64


RUN mkdir -pv /opt

# Download and unpack the redis_exporter tar file
RUN cd /opt \
    && wget https://github.com/oliver006/redis_exporter/releases/download/v1.46.0/redis_exporter-v$REDIS_EXPORTER_VERSION.tar.gz \
    && tar xzf redis_exporter-v$REDIS_EXPORTER_VERSION.tar.gz \
    && rm redis_exporter-v$REDIS_EXPORTER_VERSION.tar.gz

# Create a symlink to the jmeter process in a normal bin directory
RUN ln -s /opt/redis_exporter-v$REDIS_EXPORTER_VERSION/redis_exporter /usr/local/bin


# Indicate the default command to run
#CMD redis_exporter
CMD ["/bin/sh"]

# docker build -t redis_exporter:v1 .
