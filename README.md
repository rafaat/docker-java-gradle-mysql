# java-gradle-mysql docker image

*Features*
- Java 1.8
- MariaDB 5.5
- Gradle 3.1
- mysql-connector-java
- rpm-build
- unzip

*To start mysql server*
- Without systemd: `mysqld_safe > /dev/null &`
- With systemd: `systemctl start mariadb`

*To start container in privileged mode for systemd support*
- `docker run -d --name my_container rafaat/java-gradle-mysql`
- `docker exec -it my_container /bin/bash`
