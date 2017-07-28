network-dns-enable-resolved:
  service.running:
    - name: systemd-resolved
    - enable: True
