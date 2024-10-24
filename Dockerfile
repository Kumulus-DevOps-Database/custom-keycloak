FROM quay.io/keycloak/keycloak:25.0.6

COPY theme/custom /opt/keycloak/themes/custom

ENV KC_THEME=custom

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--proxy-headers", "xforwarded"]
