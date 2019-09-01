/etc/skel/Desktop:
  file.directory:
    - user: root
    - group: root
    - mode: '755'
    - makedirs: True

/etc/skel/Desktop/Mu\ Editor.desktop:
  file.managed:
    - user: root
    - group: root
    - mode: '755'
    - contents: |
      [Desktop Entry]
      Version=1.0
      Type=Application
      Name=Mu Editor
      Comment=
      Exec=/usr/bin/mu-editor
      Icon=mu-editor
      Path=
      Terminal=false
      StartupNotify=false
