FROM mysql:8.0.19
ENV MYSQL_ROOT_PASSWORD 123
COPY mysql/my.cnf /etc/mysql/