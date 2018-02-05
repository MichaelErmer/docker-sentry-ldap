# Sentry Docker with LDAP

This works like the official sentry docker image extended by:

    AUTH_LDAP_SERVER_URI=ldap://yourserver
    AUTH_LDAP_BIND_DN=userid=sentry, ou=services, o=company, dc=group, dc=de 
    AUTH_LDAP_BIND_PASSWORD=somepassword
    AUTH_LDAP_USER_SEARCH_DN=ou=users, o=company, dc=group, dc=de
    AUTH_LDAP_USER_SEARCH_QUERY=(cn=%(user)s)