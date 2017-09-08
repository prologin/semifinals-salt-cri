auth-exec-enable:
  service.running:
    - name: getty@tty1
    - enable: True

auth-exec:
  file.managed:
    - name: /etc/systemd/system/getty@tty1.service.d/autologin.conf
    - source: salt://auth/exec/files/autologin.conf
    - makedirs: True
    - template: jinja
    - watch_in:
      - service: auth-exec-enable
