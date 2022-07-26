#### Dockerfile for Keycloak 18.0 /w realm import

1.  Clone the repository with `git clone git@github.com:Metatavu/dockerfile-keycloak.git`  
2.  Edit *keycloak_import.json* users/clients etc. 
    - Replace *YOUR_REALM_NAME* with actual realm name
    - Replace *YOUR_CLIENT_NAME* with actual client name
3.  `docker build -f Dockerfile -t *your_image_name* .`

**This is only for development purposes!**
