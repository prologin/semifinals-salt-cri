users:
  hadoop:
    fullname: Hadoop
    home: /home/hadoop
    shell: /bin/bash
    empty_password: True
    user_files:
      enabled: True
      source: salt://files/default/home/hadoop
      file_mode: 0600
    groups:
      - audio
      - video

  root:
    password: $1$f3rZ51yv$O1WONwSt4zoKS8IiAeXvy/
    shell: /bin/bash
    user_files:
      enabled: True
      source: salt://files/default/home/root

salt-minion-prefix: hadoop-archlinux

sddm-title: "--- Arch Linux ---"
sddm-footer: "build: yes"
