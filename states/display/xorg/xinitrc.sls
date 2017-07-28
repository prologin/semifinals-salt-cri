{% for username, user in salt['pillar.get']('users', {}).items() if (user.absent is not defined or not user.absent) %}
{%- set current = salt.user.info(username) -%}
{%- set user_xinitrc = salt['pillar.get'](('users:' ~ username ~ ':xinitrc'), None) -%}
{%- if user_xinitrc -%}
{%- set user_home = salt['pillar.get'](('users:' ~ username ~ ':home'), current.get('home', '/home/' ~ username )) -%}

install-system_xinitrc_{{ username }}:
  file.managed:
    - name: {{ user_home }}/.xinitrc
    - contents:
      - exec {{ user_xinitrc }}
    - mode: 0755

{%- endif -%}
{%- endfor -%}
