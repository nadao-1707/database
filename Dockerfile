FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=clinic_reservation_system

COPY ./clinic_reservation_system.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
