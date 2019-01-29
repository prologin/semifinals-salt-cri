{% for name, contents in pillar.get('udev-rules', {}).items() %}
udev-custom-rule-{{ name }}:
  file.managed:
    - name: /etc/udev/rules.d/{{ name }}.rules
    - contents: {{ contents }}
{% endfor %}

udev-custom-rules:
  test.nop: []
{%- if pillar.get('udev-rules', False) %}
  require:
{%- for name in pillar.get('udev-rules', {}) %}
    - file: udev-custom-rule-{{ name }}
{%- endfor %}
{%- endif %}
