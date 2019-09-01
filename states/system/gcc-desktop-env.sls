xfce-first-entry:
  file.managed:
    - name: /usr/share/xsessions/0xfce.desktop
    - source: salt://system/files/0xfce.desktop
    - mode: 644
