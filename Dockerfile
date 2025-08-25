FROM apache/nifi:latest

ARG JDBC_POSTGRES_DRIVER_URL

# Downloads the PostgreSQL JDBC driver (version 42.7.7) from a GitHub repository
# and saves it to the NiFi JDBC directory for database connectivity.
RUN curl -L -o /opt/nifi/nifi-current/jdbc $JDBC_POSTGRES_DRIVER_URL

EXPOSE 8443
