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
    shell: /bin/bash
    empty_password: True
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: cri-archlinux

sddm-title: "--- Arch Linux (CRI) ---"
sddm-footer: "build: {{ "now"|strftime("%y%m%d-%H%m") }}"
