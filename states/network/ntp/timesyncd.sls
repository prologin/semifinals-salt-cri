network-ntp-user:
  user.present:
    - name: systemd-timesync
    - gid_from_name: True
    - home: /
    - shell: /sbin/nologin
    - system: True
    - fullname: systemd Time Synchronization

network-ntp-configure-timesyncd:
  file.managed:
    - name: /etc/systemd/timesyncd.conf
    - source: salt://network/ntp/files/timesyncd.conf.jinja2
    - template: jinja
    - watch_in:
      - service: network-ntp-enable-timesyncd

network-ntp-enable-timesyncd:
  service.running:
    - name: systemd-timesyncd.service
    - enable: True

