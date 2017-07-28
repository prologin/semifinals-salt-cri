system-repository-conf:
  file.managed:
      - name: /etc/pacman.conf
      - source: salt://system/files/pacman.conf
  cmd.run:
    - name: pacman -Sy
