gcc-keyboard-layout:
  file.managed:
    - name: /usr/share/sddm/scripts/Xsetup
    - contents: |
        #!/usr/bin/env sh
        setxkbmap fr,us,gb
