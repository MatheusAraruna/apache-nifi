FROM apache/nifi:latest

# Downloads the PostgreSQL JDBC driver (version 42.7.7) from a GitHub repository
# and saves it to the NiFi JDBC directory for database connectivity.
#RUN curl -L -o /opt/nifi/nifi-current/jdbc https://github.com/MatheusAraruna/apache-nifi/blob/main/config/jdbc/postgresql-42.7.7.jar

EXPOSE 8080
