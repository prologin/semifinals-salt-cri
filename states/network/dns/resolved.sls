network-dns-enable-resolved:
  service.running:
    - name: systemd-resolved
    - enable: True

network-dns-configure-resolv-conf:
  file.symlink:
    - name: /etc/resolv.conf
    - target: /usr/lib/systemd/resolv.conf
    - force: True
