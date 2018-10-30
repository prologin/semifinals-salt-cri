{% if pillar.get('ruby-gems') %}
system-pkgs-ruby:
  pkg.installed:
    - pkgs:
      - ruby
      - rubygems

system-ruby-gems:
  gem.installed:
    - names:
    {% for gem in pillar.get('ruby-gems') %}
      - {{ gem }}
    {% endfor %}
{% endif %}
