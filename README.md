#RUN LOCAL

docker run -d \
    --name keycloak \
    -p 8080:8080 \
    -e KEYCLOAK_ADMIN=admin \
    -e KEYCLOAK_ADMIN_PASSWORD=KuMuLuS2024keycloak \
    -e KC_DB=postgres \
    -e KC_DB_SCHEMA=keycloak \
    -e KC_DB_URL_HOST=pgsql-openai.postgres.database.azure.com \
    -e KC_DB_URL_PORT=5432 \
    -e KC_DB_URL_DATABASE=postgres \
    -e KC_DB_USERNAME=genai_kumulus \
    -e KC_DB_PASSWORD=<password> \
    quay.io/keycloak/keycloak:25.0.6 start-dev


STEP 1 -> CRIAR SCHEMA no database com nome informadono KC_DB_SCHEMA


STEP 2 -> CRIAR VARIAVEIS DE AMBIENTE NO KEYVAULT:

    KEYVAULT KEY: keycloak-user-admin
    KEYCLOAK_ADMIN=admin

    KEYVAULT KEY: keycloak-user-admin-password
    KEYCLOAK_ADMIN_PASSWORD=KuMuLuS2024keycloak

    KEYVAULT KEY: keycloak-db-type
    KC_DB=postgres

    KEYVAULT KEY: keycloak-db-schema
    KC_DB_SCHEMA=keycloak

    KEYVAULT KEY: keycloak-db-host
    KC_DB_URL_HOST=pgsql-openai.postgres.database.azure.com

    KEYVAULT KEY: keycloak-db-port
    KC_DB_URL_PORT=5432

    KEYVAULT KEY: keycloak-db-database
    KC_DB_URL_DATABASE=postgres 

    KEYVAULT KEY: keycloak-db-username 
    KC_DB_USERNAME=genai_kumulus

    KEYVAULT KEY: keycloak-db-password
    KC_DB_PASSWORD=<password>


STEP 3 -> Configurar proxy reverso


#TO DO
Configurar logs de auditoria


#Admin Role for api: https://steve-mu.medium.com/create-new-user-in-keycloak-with-admin-restful-api-e6e868b836b4

#criar mapper dos groups para o json em "client scopes"

#Unmanaged Attributes on realm settings to appear user attributes