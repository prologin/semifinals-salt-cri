salt-minion-enable:
  service.running:
    - name: salt-minion
    - enable: True
    - require:
      - file: salt-minion-configure-service

salt-minion-configure-startup_states:
  file.append:
    - name: /etc/salt/minion
    - text: "startup_states: highstate"
    - watch_in:
      - service: salt-minion-enable

salt-minion-configure-states-environment:
  file.replace:
    - name: /etc/salt/minion
    - pattern: "^environment:.*$"
    - repl: "environment: {{ opts['saltenv'] }}"
    - append_if_not_found: True
    - watch_in:
      - service: salt-minion-enable

salt-minion-configure-pillar-environment:
  file.replace:
    - name: /etc/salt/minion
    - pattern: "^pillarenv:.*$"
    - repl: "pillarenv: {{ opts['pillarenv'] }}"
    - append_if_not_found: True
    - watch_in:
      - service: salt-minion-enable

salt-minion-configure-wrapper:
  file.managed:
    - name: /usr/local/bin/salt-minion_wrapper
    - template: jinja
    - source: salt://salt-minion/files/salt-minion_wrapper.jinja2
    - mode: 755

salt-minion-configure-service:
  file.line:
    - name: /usr/lib/systemd/system/salt-minion.service
    - content: ExecStart=/usr/local/bin/salt-minion_wrapper
    - match: ExecStart=
    - mode: replace
    - require:
      - file: salt-minion-configure-wrapper
