README.md

Dockerfilae MariaDB  in centos 7.1.1503

### Iniciar Mariadb como root asignándole una contraseña con datos persistentes.
docker run  -p 3306:3306 -e MYSQL_ROOT_PASSWORD='xxxxxx' -v /var/lib/mysql --name mariadbcentos -d andiirc/mariadb

