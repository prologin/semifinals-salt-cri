{% if pillar.get('ruby-gems') %}
system-pkgs-ruby:
  pkg.installed:
    - pkgs:
      - ruby
      - rubygems

{% for gem in pillar.get('ruby-gems') %}
system-ruby-gems-{{ gem }}:
  cmd.run:
    - name: "gem install --no-user-install --no-document {{ gem }}"
{% endfor %}
{% endif %}
