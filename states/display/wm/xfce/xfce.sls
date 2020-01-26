display-wm-xfce-install:
  pkg.installed:
    - pkgs:
      - exo
      - garcon
      - thunar
      - thunar-volman
      - tumbler
      - xfce4-appfinder
      - xfce4-pulseaudio-plugin
      - xfce4-panel
      - xfce4-power-manager
      - xfce4-session
      - xfce4-settings
      - xfce4-terminal
      - xfconf
      - xfdesktop
      - xfwm4
      - xfwm4-themes
      - mousepad
      - ristretto
      - thunar-archive-plugin
      - thunar-media-tags-plugin
      - xfce4-datetime-plugin
      - xfce4-mount-plugin
      - xfce4-notifyd
      - xfce4-taskmanager
      - xfce4-xkb-plugin
  require:
    - pkg: display-xorg-install

{% if salt['pillar.get']('xfce-background', False) %}
display-wm-xfce-wallpaper:
  file.managed:
    - name: /usr/share/backgrounds/xfce/xfce-teal.jpg
    - source: {{ salt['pillar.get']('xfce-background') }}
    - skip_verify: True
    - require:
      - pkg: display-wm-xfce-install
{% endif %}
