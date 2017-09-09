{% for username, user in salt['pillar.get']('users', {}).items() if (user.absent is not defined or not user.absent) %}
{% if user.empty_password is defined and user.empty_password %}
system-users-empty-password-workaround-{{ username }}:
  file.replace:
    - name: /etc/shadow
    - pattern: "^{{ username }}:!:"
    - repl: "{{ username }}::"
{% endif %}
{% endfor %}
