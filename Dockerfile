FROM apache/nifi:latest

# Garante que o diretório existe
RUN mkdir -p /opt/nifi/nifi-current/jdbc

# Copia os drivers JDBC para dentro do container
COPY ./config/jdbc /opt/nifi/nifi-current/jdbc

EXPOSE 8443
