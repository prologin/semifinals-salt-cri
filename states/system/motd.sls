system-set-motd:
  file.managed:
    - name: /etc/motd
    - contents: {{ salt['pillar.get']('motd') }}
