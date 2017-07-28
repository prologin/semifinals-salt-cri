network-afs-configure-check_token:
  file.managed:
    - name: /usr/local/bin/check_token
    - source: salt://network/afs/files/check_token
    - mode: '0755'

network-afs-configure-pam-sshd:
  file.managed:
    - name: /etc/pam.d/sshd
    - source: salt://network/afs/files/pam.d/sshd
    - require:
      - file: network-afs-configure-check_token

network-afs-configure-pam-epita:
  file.managed:
    - name: /usr/local/bin/pam_epita
    - source: salt://network/afs/files/pam.d/pam_epita
    - mode: '0755'
    - require:
      - service: network-afs-enable-openafs
      - file: auth-sso-configure-kerberos

network-afs-configure-pam-system-auth:
  file.managed:
    - name: /etc/pam.d/system-auth
    - source: salt://network/afs/files/pam.d/system-auth
    - require:
      - file: network-afs-configure-pam-epita

network-afs-configure-profile.d:
  file.managed:
    - name: /etc/profile.d/afs.sh
    - source: salt://network/afs/files/profile_afs.sh
    - mode: '0755'
    - require:
      - file: network-afs-configure-pam-epita

