## Apache NiFi Provision

This project provides a ready-to-use Docker setup for provisioning an [Apache NiFi](https://nifi.apache.org/) instance with custom JDBC drivers. It is designed to simplify the deployment of NiFi with support for multiple databases, such as MySQL and PostgreSQL, by including their respective JDBC drivers in the container.

### What this project does

- Builds a Docker image based on the official `apache/nifi:latest` image.
- Ensures the required directory structure for JDBC drivers inside the container.
- Copies custom JDBC drivers (MySQL, PostgreSQL) from the `config/jdbc` folder into the NiFi container, making them available for database connections.
- Exposes the default NiFi web port (8443).

This setup is ideal for quickly spinning up a NiFi instance with database connectivity out-of-the-box, useful for development, testing, or production environments where custom drivers are needed.