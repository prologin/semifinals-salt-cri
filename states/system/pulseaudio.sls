{% if salt['file.file_exists']('/etc/pulse/default.pa') %}
system-pulseaudio-fix-hdmi-suspend:
  file.comment:
    - name: /etc/pulse/default.pa
    - regex: ^load-module module-switch-on-port-available
{% endif %}
