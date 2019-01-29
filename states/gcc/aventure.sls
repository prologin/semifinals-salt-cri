gcc-aventure-file:
  file.managed:
    - name: /etc/aventure.sh
    - source: salt://gcc/files/aventure.sh
    - mode: 666

gcc-aventure:
  file.append:
    - name: /etc/profile
    - text: 
      - "source /etc/aventure.sh"
  require:
    - file: gcc-aventure-file
