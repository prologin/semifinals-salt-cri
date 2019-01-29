include:
  - ..sddm

display-display-manager-sddm-theme-epita-install:
  pkg.installed:
    - name: epita-themes-sddm
    - require:
      - pkg: display-display-manager-sddm-install
      - cmd: system-repository-conf

display-display-manager-sddm-theme-epita-configure:
  file.managed:
    - name: /usr/share/sddm/themes/epita-simplyblack/theme.conf.user
    - template: jinja
    - source: salt://display/display-manager/sddm/files/theme.conf.user
    - require:
      - pkg: display-display-manager-sddm-theme-epita-install

display-display-manager-sddm-configure-theme:
  file.managed:
    - name: /etc/sddm.conf
    - contents: |
        [General]
        Numlock=on
        [Theme]
        Current=epita-simplyblack
