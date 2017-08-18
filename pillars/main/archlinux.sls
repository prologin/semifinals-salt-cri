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
    password: $1$2GW70FgP$9Hwg2xHXa0wYKRBtpufFZ.
    shell: /bin/bash
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: archlinux

sddm-title: "--- Arch Linux ---"
sddm-footer: "build: {{ "now"|strftime("%y%m%d-%H%m") }}"
