network-dhcp-enable-networkd:
  service.running:
    - name: systemd-networkd
    - enable: True

network-dhcp-configure-networkd:
  file.managed:
    - name: /etc/systemd/network/dhcp.network
    - contents: |
        [Match]
        Name=*
        [Network]
        DHCP=ipv4
    - watch_in:
      - service: network-dhcp-enable-networkd
