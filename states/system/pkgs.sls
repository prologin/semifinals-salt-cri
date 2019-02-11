{% if pillar.get('pkgs-cri') %}
system-pkgs-cri:
  pkg.installed:
    - fromrepo: cri
    - reinstall: True
    - pkgs:
      {%- for pkg in pillar.get('pkgs-cri', {}) %}
        - {{ pkg }}
      {% endfor %}
    - require:
      - system-repository-conf
      - system-pkgs
{% endif %}

{% if pillar.get('pip') %}
system-pkgs-install-pip:
  pkg.installed:
    - pkgs:
      - python-pip
      - git
    - require:
      - system-repository-conf

system-pkgs-pip-requirements:
  file.managed:
    - name: /var/lib/misc/requirements.txt
    - mode: 644
    - makedirs: True
    - contents_pillar: pip
    - contents_newline: True

system-pkgs-pip:
  cmd.run:
    - name: /usr/bin/pip install -r /var/lib/misc/requirements.txt
    - runas: root
    - reload_modules: True
    - require:
      - pkg: system-pkgs-install-pip
    - onchanges:
      - file: system-pkgs-pip-requirements

{% endif %}

{% if pillar.get('pkgs') %}
system-pkgs:
  pkg.installed:
    - pkgs:
      {%- for pkg in pillar.get('pkgs', {}) %}
        - {{ pkg }}
      {% endfor %}
    - require:
      - system-repository-conf
{% endif %}

system-pkgs-vim:
  pkg.installed:
{% if salt['pillar.get']('vim-graphic', False) %}
    - name: gvim
{% else %}
    - name: vim
{% endif %}
    - require:
      - system-repository-conf
