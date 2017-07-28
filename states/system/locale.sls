system-gen-locale:
  file.managed:
    - name: /etc/locale.gen
    - contents: en_US.UTF-8 UTF-8
  cmd.run:
    - name: locale-gen
    - runas: root
    - onchanges:
      - file: /etc/locale.gen

system-conf-locale:
  file.managed:
    - name: /etc/locale.conf
    - source: salt://system/files/locale.conf


#system-locale-us:
#  locale.present:
#    - name: en_US.UTF-8

#system-default-locale:
#  locale.system:
#    - name: en_US.UTF-8
#    - require:
#      - locale: system-locale-us
