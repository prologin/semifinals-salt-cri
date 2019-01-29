gcc-listes-tests:
  file.managed:
    - name: /etc/listes_tests.py
    - source: salt://gcc/files/tests.py
    - mode: 755
