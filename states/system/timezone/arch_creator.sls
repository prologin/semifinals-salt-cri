exclude:
  - id: system-timezone

system-timezone-arch_creator:
  file.symlink:
  - name: /etc/localtime
  - target: /usr/share/zoneinfo/Europe/Paris
