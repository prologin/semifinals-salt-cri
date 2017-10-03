disaply-xorg-configure-intel-device:
  file.managed:
    - name: /etc/X11/xorg.conf.d/intel-device.conf
    - source: salt://display/xorg/files/intel-device.conf
