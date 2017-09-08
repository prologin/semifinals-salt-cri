users:
  root:
    home: /root
    shell: /bin/bash
    empty_password: True
    user_files:
      enabled: True
      source: salt://files/dump/home/root

salt-minion-prefix: dump

auth-exec-script: /root/dump.sh
