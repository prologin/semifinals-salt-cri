network-ntp-enable-timesyncd:
  service.running:
    - name: systemd-timesyncd.service
    - enable: True

network-ntp-configure-timesyncd:
  file.managed:
    - name: /etc/systemd/timesyncd.conf
    - source: salt://network/ntp/files/timesyncd.conf.jinja2
    - template: jinja
    - watch_in:
      - service: network-ntp-enable-timesyncd
