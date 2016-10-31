# java-gradle-mysql docker image

*Docker Hub:* https://hub.docker.com/r/rafaat/java-gradle-mysql

*Features*
- Java 1.8
- MariaDB 5.5
- Gradle 3.1
- mysql-connector-java
- rpm-build
- unzip
- systemd and initscripts (need privileged mode)

*To start mysql server*
- Without systemd: `mysqld_safe > /dev/null &` or `/usr/libexec/mysqld --user=mysql > /dev/null &`
- With systemd: `systemctl start mariadb` or `service mariadb start`

*To start container in privileged mode for systemd support*
- `docker run -d --name my_container --privileged rafaat/java-gradle-mysql`
- `docker exec -it my_container /bin/bash`
