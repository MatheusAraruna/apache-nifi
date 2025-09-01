FROM apache/nifi:latest

# Downloads the PostgreSQL JDBC driver (version 42.7.7) from a GitHub repository
# and saves it to the NiFi JDBC directory for database connectivity.
RUN curl -L -o /opt/nifi/nifi-current/jdbc https://github.com/MatheusAraruna/apache-nifi/blob/main/config/jdbc/postgresql-42.7.7.jar

# Set the external host and port for the NiFi web proxy
ENV NIFI_WEB_PROXY_HOST=https://apache-nifi-900399650741.us-central1.run.app:8443

EXPOSE 8443
