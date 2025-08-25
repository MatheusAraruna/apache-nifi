FROM apache/nifi:latest

# Install curl and other dependencies
USER root
RUN apt-get update && apt-get install -y curl

# Download the PostgreSQL JDBC driver
RUN curl -L -o /opt/nifi/nifi-current/jdbc https://github.com/MatheusAraruna/apache-nifi/blob/main/config/jdbc/postgresql-42.7.7.jar

# Switch back to nifi user
USER nifi

# Expose HTTP port
EXPOSE 8443

# Environment variables for Cloud Run
ENV NIFI_WEB_HTTP_PORT=8443
ENV NIFI_WEB_HTTP_HOST=0.0.0.0
ENV NIFI_CLUSTER_IS_NODE=false
ENV NIFI_REMOTE_INPUT_HOST=0.0.0.0