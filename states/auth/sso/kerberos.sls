auth-sso-install-kerberos:
  pkg.installed:
    - pkgs:
      - pam-krb5

auth-sso-configure-kerberos:
  file.managed:
    - name: /etc/krb5.conf
    - source: salt://auth/sso/files/krb5.conf
    - require:
      - pkg: auth-sso-install-kerberos
