misc-git-scripts-submission:
  file.managed:
    - name: /usr/local/bin/submission
    - source: salt://misc/git-scripts/files/submission
    - user: root
    - group: root
    - mode: 755

misc-git-scripts-git-autoconfig:
  file.managed:
    - name: /usr/local/bin/git-autoconfig
    - source: salt://misc/git-scripts/files/git-autoconfig
    - user: root
    - group: root
    - mode: 755

