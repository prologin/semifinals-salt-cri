auth-sso-install-ldap:
  pkg.installed:
    - pkgs:
      - cyrus-sasl-gssapi
      - openldap

auth-sso-configure-ldap:
  file.managed:
    - name: /etc/openldap/ldap.conf
    - source: salt://auth/sso/files/ldap.conf
    - require:
      - pkg: auth-sso-install-ldap
