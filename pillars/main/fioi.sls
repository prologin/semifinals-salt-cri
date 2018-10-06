users:
  fioi:
    fullname: FranceIOI
    home: /home/fioi
    shell: /bin/bash
    empty_password: True
    enforce_password: True
    groups:
      - audio
      - video
  root:
    password: $1$uLgYYF5F$6zk3SjXBXTFrNhf4l.P7d1
    shell: /bin/zsh
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: "fioi-archlinux"

sddm-title: "France-IOI"

vim-graphic: True
