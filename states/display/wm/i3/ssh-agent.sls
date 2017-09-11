display-wm-i3-ssh-agent:
  file.replace:
    - name: /usr/share/xsessions/i3.desktop
    - pattern: '^Exec=.*$'
    - repl: 'Exec=ssh-agent i3'
    - require:
      - pkg: display-wm-i3-i3lock-epita-install

display-wm-i3-ssh-agent-i3-with-shmlog:
  file.replace:
    - name: /usr/share/xsessions/i3-with-shmlog.desktop
    - pattern: '^Exec=.*$'
    - repl: 'Exec=ssh-agent i3-with-shmlog'
    - require:
      - pkg: display-wm-i3-i3lock-epita-install
