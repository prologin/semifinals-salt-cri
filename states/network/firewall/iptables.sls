network-firewall-enable-iptables:
  service.running:
    - name: iptables
    - enable: True

network-firewall-configure-iptables:
  file.managed:
    - name: /etc/iptables/iptables.rules
    - source: salt://network/firewall/files/iptables.rules
    - watch_in:
      - service: network-firewall-enable-iptables

