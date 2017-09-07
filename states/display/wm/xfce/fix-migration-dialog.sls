display-wm-xfce-fix-migration-dialog:
  file.line:
    - name: /etc/xdg/xfce4/xinitrc
    - content: export XFCE_PANEL_MIGRATE_DEFAULT=1
    - mode: ensure
    - after: '#!/bin/sh'
  require:
    - pkg: display-wm-xfce-install
