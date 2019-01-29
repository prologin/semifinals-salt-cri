system-repository-conf-dir-make:
  file.directory:
    - name: /etc/pacman.d/repos
    - makedirs: True

system-repository-conf-dir:
  file.touch:
    - name: /etc/pacman.d/repos/mock
    - require:
      - file: system-repository-conf-dir-make

system-repository-conf-layout:
  file.managed:
    - name: /etc/pacman.conf
    - source: salt://system/files/pacman.conf
    - require:
      - file: system-repository-conf-dir

{% for name, contents in pillar.get('repos', {}).items() %}
system-repository-custom-{{ name }}:
  file.managed:
    - name: /etc/pacman.d/repos/{{ name }}.conf
    - contents: {{ contents }}
    - require:
      - file: system-repository-conf-layout
{% endfor %}

system-repository-conf:
  cmd.run:
    - name: pacman -Sy
  require:
    - file: system-repository-conf-layout
{%- for name in pillar.get('repos', {}) %}
    - file: system-repository-custom-{{ name }}
{%- endfor %}
