redshift-service-dir:
  file.directory:
    - name:  /etc/systemd/user/default.target.wants/
    - mode:  755

redshift-service-file:
  file.managed:
    - name: /etc/systemd/user/redshift.service
    - source: salt://display/files/redshift.service
    - mode: 644

redshift-package:
  pkg.installed:
    - name: redshift

redshift-service:
  file.symlink:
    - name: /etc/systemd/user/default.target.wants/redshift.service
    - target: /etc/systemd/user/redshift.service
    - requires:
      - file: redshift-service-file
      - file: redshift-service-dir
      - pkg: redshift-package