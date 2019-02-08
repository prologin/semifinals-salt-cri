misc-docker-bigdata-files:
  file.recurse:
    - name: /usr/local/bin/
    - source: salt://misc/docker-bigdata/files/
    - file_mode: 0755
    - require:
      - service: system-docker-enable-docker
