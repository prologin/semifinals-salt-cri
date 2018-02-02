{% if pillar.get('pkgs-cri') %}
system-pkgs-cri:
  pkg.installed:
    - fromrepo: cri
    - reinstall: True
    - pkgs:
      {%- for pkg in pillar.get('pkgs-cri', {}) %}
        - {{ pkg }}
      {% endfor %}
{% endif %}

{% if pillar.get('pkgs') %}
system-pkgs:
  pkg.installed:
    - pkgs:
      {%- for pkg in pillar.get('pkgs', {}) %}
        - {{ pkg }}
      {% endfor %}
{% endif %}

system-pkgs-vim:
  pkg.installed:
{% if salt['pillar.get']('vim-graphic', False) %}
    - name: gvim
{% else %}
    - name: vim
{% endif %}
