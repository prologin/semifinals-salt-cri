network-dhcp-resolv-conf:
  file.symlink:
    - name: /etc/resolv.conf
    - target: /usr/lib/systemd/resolv.conf
    - force: True
