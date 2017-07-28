auth-sso-install-sssd:
  pkg.installed:
    - pkgs:
      - sssd

auth-sso-enable-sssd:
  service.running:
    - name: sssd
    - enable: True
    - require:
      - pkg: auth-sso-install-kerberos
      - pkg: auth-sso-install-ldap
      - pkg: auth-sso-install-sssd

auth-sso-configure-sssd:
  file.managed:
    - name: /etc/sssd/sssd.conf
    - source: salt://auth/sso/files/sssd.conf
    - mode: 600
    - template: jinja
    - watch_in:
      - service: auth-sso-enable-sssd

auth-sso-configue-nsswitch-sssd:
  file.managed:
    - name: /etc/nsswitch.conf
    - source: salt://auth/sso/files/nsswitch.conf
    - require:
      - service: auth-sso-enable-sssd
