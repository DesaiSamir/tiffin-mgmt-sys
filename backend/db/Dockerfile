# Use MySQL latest version as the base image
FROM mysql:latest

# Environment variables
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=restaurant_management_system

# Expose MySQL port
EXPOSE 3306

# Copy migration scripts to a directory in the container
COPY ./migrations /docker-entrypoint-initdb.d/

# Make sure the scripts have the correct permissions
RUN chmod -R 755 /docker-entrypoint-initdb.d/
