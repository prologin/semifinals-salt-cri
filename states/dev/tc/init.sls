dev-tc-add-custom-bison-to-path:
  file.line:
    - name: /etc/environment
    - content: PATH="/opt/bison-epita/bin"
    - mode: insert
    - location: start
