gcc-wallpaper:
  file.managed:
    - name: /usr/share/backgrounds/xfce/xfce-stripes.png
    - source: salt://gcc/files/wallpaper.png
    - mode: 644
