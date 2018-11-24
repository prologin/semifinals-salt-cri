system-bluetooth-install-bluez:
  pkg.installed:
    - name: bluez

system-bluetooth-enable-bluetooth:
  service.running:
    - name: bluetooth
    - enable: True
    - require:
      - pkg: system-bluetooth-install-bluez
