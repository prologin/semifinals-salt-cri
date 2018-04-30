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
    password: $1$f3rZ51yv$O1WONwSt4zoKS8IiAeXvy/
    shell: /bin/zsh
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: browser-archlinux

autologin-user: epita
