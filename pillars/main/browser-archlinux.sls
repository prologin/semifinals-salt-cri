salt-minion-prefix: browser-archlinux
users:
    epita:
        user_files:
            enabled: True
            source: salt://files/browser-archlinux/home/epita
        xinitrc: i3

autologin-user: epita
