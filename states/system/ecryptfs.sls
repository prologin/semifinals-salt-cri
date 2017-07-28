system-ecryptfs-install:
  pkg.installed:
    - pkgs:
      - ecryptfs-simple

system-ecryptfs-configure:
  file.managed:
    - name: /etc/modules-load.d/ecryptfs.conf
    - contents:
       - ecryptfs
    - require:
      - pkg: system-ecryptfs-install
