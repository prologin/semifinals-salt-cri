display-xorg-keyboard:
  file.managed:
    - name: /etc/X11/xorg.conf.d/00-keyboard.conf
    - contents: |
        Section "InputClass"
          Identifier "system-keyboard"
          MatchIsKeyboard "on"
          Option "XkbLayout" "us,fr"
          Option "XkbModel" "pc105"
        EndSection
    - makedirs: True
