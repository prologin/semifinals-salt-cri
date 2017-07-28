system-hostname:
  network.system:
    - hostname: {{ salt['pillar.get']('system:hostname', "epita") }}
