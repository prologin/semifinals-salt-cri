users:
  epitech:
    fullname: Epitech
    home: /home/epitech
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
      source: salt://files/pxe/home/root

salt-minion-prefix: coding

sddm-title: "Coding Club"
sddm-footer: "build: {{ "now"|strftime("%y%m%d-%H%m") }}"
sddm-logo: "http://static.cri.epita.net/backgrounds/epitech.png"

xfce-background: "http://static.cri.epita.net/backgrounds/coding.jpg"
