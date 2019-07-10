exclude:
  - id: network-dns-enable-resolved
  - id: network-dns-configure-resolv-conf

network-dns-disable-resolved:
  service.disabled:
    - name: systemd-resolved
