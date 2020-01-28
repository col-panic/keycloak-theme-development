# Keycloak live theme development

This setup provides a pre-configured area to (develop keycloak themes)[https://www.keycloak.org/docs/latest/server_development/index.html#_themes]. The keycloak version used is 8.0.1.

## Usage

The `theme` directory is mounted into the keycloak instance and contains a copy of the keycloak 8.0.1 delivered themes, plus
the `mytheme` theme, which is a clone of the `keycloak` theme. It is pre-configured as entrypoint and hence should be used for development.

To develop `mytheme` proceed as follows:

1. Start the development enviroment with `docker-compose up --build`
2. After startup, keycloak is available on http://localhost:8080 - for the login credentials see the `docker-compose.yml` file
3. The `themes` directory is now live connected to the docker instance, modifications done within it should be directly reflected