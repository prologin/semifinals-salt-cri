system-aria2-install-aria2:
  pkg.installed:
    - name: aria2

system-aria2-enable-aria2:
  service.running:
    - name: aria2
    - enable: True
    - require:
      - pkg: system-aria2-install-aria2
      - file: system-aria2-install-service

system-aria2-install-service:
  file.managed:
    - name: /etc/systemd/system/aria2.service
    - source: salt://system/files/aria2.service
    - mode: 600
    - template: jinja
    - watch_in:
      - service: system-aria2-enable-aria2
