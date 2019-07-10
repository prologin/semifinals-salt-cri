users:
  epita:
    fullname: Epita
    home: /home/epita
    shell: /bin/bash
    empty_password: True
    groups:
      - audio
      - video

  root:
    password: $6$09rXqOQDJ.A$EWFhzmFO3jPGsqlFgjD.fug7oX.wXwzSwC.rUSb5deMUJMD0ovzmZBdRjkXriIQkIdRzXcTwG6xXnswKRR8Jj1
    shell: /bin/bash
    home: /root
    createhome: True
    user_files:
      enabled: True
      source: salt://files/default/home/root

sudoers:
  groups:
    admins:
      - 'ALL=(ALL) ALL'

sddm-footer: "build: {{ "now"|strftime("%y%m%d-%H%m") }}"
