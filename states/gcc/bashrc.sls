gcc-bashrc:
  file.managed:
    - name: /etc/gcc_bashrc
    - source: salt://gcc/files/gcc_bashrc
    - mode: 755
