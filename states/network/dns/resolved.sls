network-dns-enable-resolved:
  service.running:
    - name: systemd-resolved
    - enable: True

network-dns-configure-resolv-conf:
  file.symlink:
    - name: /etc/resolv.conf
    - target: /usr/lib/systemd/resolv.conf
    - force: True

network-dns-conf:
    file.managed:
      - name: /etc/systemd/resolved.conf
      - contents: |
          [Resolve]
          DNS=10.224.4.2 1.1.1.1
      - watch_in:
        - service: network-dns-enable-resolved
