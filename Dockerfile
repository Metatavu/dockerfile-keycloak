# Download Keycloak 18.0.0 image
FROM quay.io/keycloak/keycloak:18.0.0

# Copy local file into container
COPY keycloak_import.json /opt/keycloak_import/

# Import the realm and users
RUN /opt/keycloak/bin/kc.sh import --file /opt/keycloak_import/keycloak_import.json

# Expose ports
EXPOSE 8080

# Configure environment variables
ENV KEYCLOAK_ADMIN="admin"
ENV KEYCLOAK_ADMIN_PASSWORD="admin"

# Import the realm on start-up
CMD ["start-dev"]