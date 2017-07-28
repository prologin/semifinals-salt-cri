disaply-xorg-configure-xresources:
  file.managed:
    - name: /etc/X11/Xresources
    - source: salt://display/xorg/files/Xresources
