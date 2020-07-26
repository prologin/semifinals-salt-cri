locale-generation-unit:
  file.managed:
    - mode: '0755'
    - names:
      - /etc/locale.gen:
        - source: salt://gcc/files/locales/locale.gen
      - /etc/systemd/system/generate-locales.service:
        - source: salt://gcc/files/locales/generate-locales.service


generate-locales:
  service.running:
    - name: generate-locales
    - enable: True
    - reload: True
