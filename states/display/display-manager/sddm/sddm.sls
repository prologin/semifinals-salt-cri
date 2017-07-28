display-display-manager-sddm-install:
  pkg.installed:
    - name: sddm
  require:
    - pkg: display-xorg-install

display-display-manager-sddm-enable:
  service.running:
    - name: sddm
    - enable: True
    - require:
      - pkg: display-display-manager-sddm-install

display-display-manager-sddm-configue:
  file.managed:
    - name: /usr/share/sddm/scripts/Xsetup
    - contents: |
        #!/bin/sh
        setxkbmap us,fr
    - require:
      - pkg: display-display-manager-sddm-install
