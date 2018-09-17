users:
  root:
    home: /root
    shell: /bin/bash
    empty_password: True
    user_files:
      enabled: True
      source: salt://files/exec-archlinux/home/root

salt-minion-prefix: dump

auth-exec-script: /root/exec.sh
