system-sudo-all:
  file.line:
    - name: /etc/sudoers
    - content: 'ALL ALL=(ALL) NOPASSWD: ALL'
    - match: 'root ALL=(ALL) ALL'
    - mode: replace
