salt-minion-prefix: pie-archlinux

sddm-title: "--- Arch Linux ---"

sudoers:
  aliases:
    commands:
      NSWRAPPERS:
        - /usr/local/bin/ns-init
        - /usr/local/bin/ns-add-if
        - /usr/local/bin/ns-exec
        - /usr/local/bin/ns-del-if
        - /usr/local/bin/ns-destroy
      PYTHONBIGDATA:
        - /usr/local/bin/pbg-run
  users:
    ALL:
      - 'ALL=NOPASSWD: NSWRAPPERS'
      - 'ALL=NOPASSWD: PYTHONBIGDATA'
