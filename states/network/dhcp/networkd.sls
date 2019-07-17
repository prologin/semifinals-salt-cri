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
        {% if salt['pillar.get']('networkd-domains') %}
        Domains={{ salt['pillar.get']('networkd-domains') }}
        UseDomains=true
        {% endif %}
        [DHCP]
        UseDNS=no
        UseHostname=no
    - watch_in:
      - service: network-dhcp-enable-networkd
