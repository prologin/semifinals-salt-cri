display-wm-openbox-install:
  pkg.installed:
    - pkgs:
      - openbox
      - tint2
  require:
    - pkg: display-xorg-install

display-wm-openbox-remove-kde:
  file.absent:
    - name: /usr/share/xsessions/openbox-kde.desktop
    - require:
      - pkg: display-wm-openbox-install

display-wm-openbox-configure-autostart:
  file.managed:
    - name: /etc/xdg/openbox/autostart
    - source: salt://display/wm/openbox/files/openbox_autostart
    - require:
      - pkg: display-wm-openbox-install

display-wm-openbox-configure-menu:
  file.managed:
    - name: /etc/xdg/openbox/menu.xml
    - source: salt://display/wm/openbox/files/openbox_menu.xml
    - require:
      - pkg: display-wm-openbox-install
