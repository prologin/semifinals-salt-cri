network-fix-systemd-networkd-wait:
  file.line:
    - name: /usr/lib/systemd/system/systemd-networkd-wait-online.service
    - match: 'ExecStart=/usr/lib/systemd/systemd-networkd-wait-online'
    - content: 'ExecStart=/usr/lib/systemd/systemd-networkd-wait-online --timeout=10'
    - mode: replace
