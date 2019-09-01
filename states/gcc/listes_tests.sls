gcc-listes-tests:
  file.managed:
    - name: /usr/bin/tests.py
    - source: salt://gcc/files/tests.py
    - mode: 755
