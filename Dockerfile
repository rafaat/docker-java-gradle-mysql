FROM centos:7
MAINTAINER Rafaat Hossain <rafaat123@gmail.com>


# Java & Mysql
ENV JAVA_VERSION 1.8.0
RUN yum install java-${JAVA_VERSION}-openjdk-devel mariadb-server mariadb mysql-connector-java rpm-build unzip -y && \
    yum clean all


# Gradle
ENV GRADLE_VERSION 3.1
ENV GRADLE_SHA c7de3442432253525902f7e8d7eac8b5fd6ce1623f96d76916af6d0e383010fc


RUN cd /usr/lib \
 && curl -fl https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle-bin.zip \
 && echo "$GRADLE_SHA gradle-bin.zip" | sha256sum -c - \
 && unzip "gradle-bin.zip" \
 && ln -s "/usr/lib/gradle-${GRADLE_VERSION}/bin/gradle" /usr/bin/gradle \
 && rm "gradle-bin.zip"


# Set Environment Variables
ENV GRADLE_HOME /usr/lib/gradle
ENV PATH $PATH:$GRADLE_HOME/bin


# Caches
VOLUME ["/root/.gradle/caches", "/usr/bin/app"]
