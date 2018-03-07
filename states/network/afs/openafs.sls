network-afs-install-openafs:
  pkg.installed:
    - pkgs:
      - openafs
    - require:
      - system-repository-conf

network-afs-enable-openafs:
  service.running:
    - name: openafs-client
    - enable: True
    - require:
      - pkg: network-afs-install-openafs

network-afs-configure-openafs-cacheinfo:
  file.managed:
    - name: /etc/openafs/cacheinfo
    - source: salt://network/afs/files/cacheinfo
    - require:
      - pkg: network-afs-install-openafs
    - watch_in:
      - service : network-afs-enable-openafs

network-afs-configure-openafs-thiscell:
  file.managed:
    - name: /etc/openafs/ThisCell
    - source: salt://network/afs/files/ThisCell
    - require:
      - pkg: network-afs-install-openafs
    - watch_in:
      - service : network-afs-enable-openafs

network-afs-configure-openafs-cellservdb:
  file.managed:
    - name: /etc/openafs/CellServDB
    - source: salt://network/afs/files/CellServDB
    - require:
      - pkg: network-afs-install-openafs
    - watch_in:
      - service : network-afs-enable-openafs

network-afs-configure-openafs-args:
  file.managed:
    - name: /etc/conf.d/openafs
    - source: salt://network/afs/files/openafs
    - require:
      - pkg: network-afs-install-openafs
    - watch_in:
      - service : network-afs-enable-openafs
