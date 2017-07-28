auth-autologin:
  file.managed:
    - name: /etc/systemd/system/getty@tty1.service.d/autologin.conf
    - source: salt://auth/autologin/files/autologin.conf
    - makedirs: True
    - template: jinja
