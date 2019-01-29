system-gen-locale:
  file.managed:
    - name: /etc/locale.gen
    - contents: {{ pillar.get("locales", ["en_US.UTF-8 UTF-8"]) }}
  cmd.run:
    - name: locale-gen
    - runas: root
    - onchanges:
      - file: /etc/locale.gen

system-conf-locale:
  file.managed:
    - name: /etc/locale.conf
    - contents: {{ pillar.get("locale_conf", ["LANG=en_US.UTF-8"]) }}

#system-locale-us:
#  locale.present:
#    - name: en_US.UTF-8

#system-default-locale:
#  locale.system:
#    - name: en_US.UTF-8
#    - require:
#      - locale: system-locale-us
