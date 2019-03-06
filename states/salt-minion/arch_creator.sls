salt-minion-configure-systemd-scope-false:
  file.replace:
    - name: /etc/salt/minion
    - pattern: "^systemd.scope:.*$"
    - repl: "systemd.scope: False"
    - append_if_not_found: True
    - watch_in:
      - service: salt-minion-enable
    - exclude:
      - id: salt-minion-configure-systemd-scope-true

