users:
  epita:
    fullname: Epita
    home: /home/epita
    shell: /bin/bash
    empty_password: True
    enforce_password: True
    groups:
      - audio
      - video
    user_files:
      enabled: True
      source: salt://files/sup-pxe/home/epita

  root:
    password: $1$rnTP9BKf$YHx22OmmRp1fuHKfiHI4l.
    shell: /bin/bash
    user_files:
      enabled: True
      source: salt://files/sup-pxe/home/root

salt-minion-prefix: sup-archlinux

sddm-title: "--- Arch Linux SUP ---"
sddm-footer: "build: {{ "now"|strftime("%y%m%d-%H%m") }}"
