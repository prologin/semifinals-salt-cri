system-create-conf-coredump:
  file.directory:
    - name: /etc/systemd/coredump.conf.d
    - makedirs: True

system-conf-coredump:
  file.managed:
    - name: /etc/systemd/coredump.conf.d/custom.conf
    - source: salt://system/files/coredump.conf
    - require:
      - file: system-create-conf-coredump
