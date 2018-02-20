system-mandb-add-mandrake:
  file.managed:
    - name: /usr/share/man/man7/mandrake.7.gz
      source: salt://files/man/mandrake.7.gz

system-mandb-update:
  cmd.run:
    - name: mandb
