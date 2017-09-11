display-xorg-display-manager-sddm-fix-pam:
  file.comment:
    - name: /etc/pam.d/sddm-greeter
    - regex : ^(.*pam_elogind.so)$
    - backup: False
