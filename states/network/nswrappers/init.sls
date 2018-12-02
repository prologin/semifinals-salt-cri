network-nswrappers-pkgs:
  pkg.installed:
    - pkgs:
      - ethtool
      - libcap

network-nswrappers-files:
  file.recurse:
    - name: /usr/local/bin/
    - source: salt://network/nswrappers/files/
    - file_mode: 0755
    - require:
      - pkg: network-nswrappers-pkgs
