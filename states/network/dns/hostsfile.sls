{%- set pillar_hosts = salt['pillar.get']('hostsfile:hosts', {}) %}

{%- for name, addrlist in pillar_hosts.items() %}
network-dns-hosts-{{ name }}:
  host.present:
{%- if addrlist is string %}
    - ip: {{ addrlist }}
{%- else %}
    - ip:
  {%- for addr in addrlist %}
    - {{ addr }}
  {% endfor %}
{%- endif %}
    - names:
      - {{ name }}
{%- endfor %}
