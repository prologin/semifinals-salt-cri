display-wm-i3-i3lock-epita-install:
  pkg.installed:
    - name: i3lock-cri

display-wm-i3-i3lock-epita-configure:
  file.managed:
    - name: /usr/share/backgrounds/lock.png
    - source: {{ salt['pillar.get']('i3-background', 'salt://display/wm/i3/files/background.jpg') }}
    - makedirs: True
    - require:
        - pkg: display-wm-i3-i3lock-epita-install
