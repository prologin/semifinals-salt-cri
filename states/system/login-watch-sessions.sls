system-install-logind-watch-sessions-package:
  pkg.installed:
    - pkgs:
      - python-logind-watch-sessions
    - require:
      - cmd: system-repository-conf

enable-service-logind-watch-api:
  service.running:
    - name: logind-watch-api
    - enable: True
    - require:
      - pkg: system-install-logind-watch-sessions-package
