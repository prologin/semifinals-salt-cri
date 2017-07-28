display-wm-i3-install:
  pkg.installed:
    - pkgs:
      - i3-wm
      - i3status
      - dmenu
  require:
    - pkg: display-xorg-install

{% if salt['pillar.get']('i3:config_file') %}
display-wm-i3-configure:
  file.managed:
    - name: /etc/i3/config
    - source: {{ salt['pillar.get']('i3:config_file') }}
    - require:
      - pkg: display-wm-i3-install
{% endif %}

windows-manager-i3-configure-background:
  file.managed:
    - name: /etc/i3/background.jpg
    - source: {{ salt['pillar.get']('i3-background', 'salt://display/wm/i3/files/background.jpg') }}
    - skip_verify: True
    - require:
      - pkg: display-wm-i3-install

display-wm-i3-configure-setbackground:
  file.prepend:
    - name: /etc/i3/config
    - text: "exec --no-startup-id feh --bg-scale /etc/i3/background.jpg"
    - require:
      - file: windows-manager-i3-configure-background
      - pkg: display-wm-i3-install

display-wm-i3-background-keycodes:
  file.prepend:
    - name: /etc/i3/config.keycodes
    - text: "exec --no-startup-id feh --bg-scale /etc/i3/background.jpg"
    - require:
      - file: windows-manager-i3-configure-background
      - pkg: display-wm-i3-install
