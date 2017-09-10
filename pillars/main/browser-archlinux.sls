users:
  epita:
    fullname: Epita
    home: /home/epita
    shell: /bin/bash
    empty_password: True
    groups:
      - audio
      - video
    user_files:
      enabled: True
      source: salt://files/browser-archlinux/home/epita
    xinitrc: i3

  root:
    password: $1$rnTP9BKf$YHx22OmmRp1fuHKfiHI4l.
    shell: /bin/zsh
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: browser-archlinux

autologin-user: epita
