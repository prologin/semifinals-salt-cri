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
system-install-pip:
  pkg.installed:
    - pkgs:
      - python-pip

system-pip:
  pip.installed:
    - pkgs:
      {%- for pkg in pillar.get('pip', {}) %}
        - {{ pkg }}
      {% endfor %}
    - require:
      - pkg: system-install-pip
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
