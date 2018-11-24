{% if salt['file.file_exists']('/etc/pulse/default.pa') %}
system-pulseaudio-fix-hdmi-suspend:
  file.comment:
    - name: /etc/pulse/default.pa
    - regex: ^load-module module-switch-on-port-available
{% endif %}

{% if salt['file.file_exists']('/etc/pulse/system.pa') %}
system-pulseaudio-load-module-bt-policy:
  file.line:
    - name: /etc/pulse/system.pa
    - mode: ensure
    - content: load-module module-bluetooth-policy
    - after: ^load-module module-position-event-sounds

system-pulseaudio-load-module-bt-discover:
  file.line:
    - name: /etc/pulse/system.pa
    - mode: ensure
    - content: load-module module-bluetooth-discover
    - after: ^load-module module-bluetooth-policy
{% endif %}
