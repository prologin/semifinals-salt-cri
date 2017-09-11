display-wm-xfce-ssh-agent:
  file.replace:
    - name: /usr/share/xsessions/xfce.desktop
    - pattern: '^Exec=.*$'
    - repl: 'Exec=ssh-agent startxfce4'
    - require:
      - pkg: display-wm-xfce-install
