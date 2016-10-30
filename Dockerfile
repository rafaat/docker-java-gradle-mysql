FROM centos:7

ENV JAVA_VERSION 1.8.0

RUN yum install epel-release unzip wget git rpm-build system-config-services mysql-server mysql-connector-java java-${JAVA_VERSION}-openjdk-devel rpm-build -y && \
    yum clean all

MAINTAINER Rafaat Hossain
