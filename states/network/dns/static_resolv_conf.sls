exclude:
  - id: network-dns-enable-resolved
  - id: network-dns-configure-resolv-conf

network-dns-disable-resolved:
  service.disabled:
    - name: systemd-resolved

network-dns-configure-static-resolv-conf:
  file.managed:
    - name: /etc/resolv.conf
    - follow_symlinks: False
    - contents:
      - nameserver 10.224.4.2
