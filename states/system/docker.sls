system-docker-pkgs:
  pkg.installed:
    - pkgs:
      - docker

system-docker-enable-docker:
  service.running:
    - name: docker
    - enable: True
    - require:
      - pkg: system-docker-pkgs

