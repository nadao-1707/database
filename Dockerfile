FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=clinic_reservation_system
ENV Port=3306

COPY ./clinic_reservation_system.sql /docker-entrypoint-initdb.d/

EXPOSE $Port

CMD ["mysqld"]
