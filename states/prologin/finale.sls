finale:
  user.present:
    - fullname: Finale Prologin 2020
    - shell: /bin/bash
    - home: /home/finale
    - system: True

get_ssh_private_key:
  file.managed:
    - name: /home/finale/id_ed25519
    - source: salt://prologin/files/finale/id_ed25519
    - mode: 600
    - user: finale
    - group: finale

clone_sadm_ansible:
  git.latest:
    - name: https://github.com/prologin/sadm
    - target: /home/finale/prologin2020_plante
    - force_reset: True
    - rev: ansible
    - user: finale

clone_prologin2020_plante:
  git.latest:
    - name: git@github.com:prologin/prologin2020_plante
    - identity: /home/finale/id_ed25519
    - target: /home/finale/prologin2020_plante
    - rev: master
    - user: finale

sadm_venv:
  cmd.run:
    - name: /usr/bin/python3 -m venv /home/sadm/.venv
    - runas: finale

sadm_install_dependencies:
  cmd.run:
    - name: /home/finale/sadm/.venv/bin/pip install -e python-lib -r requirements.txt
    - cwd: /home/finale/sadm
    - runas: finale

sadm_workernode_config:
  file.managed:
    - name: /home/finale/workernode.yml
    - source: salt://prologin/files/finale/workernode.yml
    - mode: 600
    - user: finale
    - group: finale

sadm_workernode_systemd:
  file.managed:
    - name: /etc/systemd/system/workernode.service
    - source: salt://prologin/files/finale/workernode.service
    - mode: 755
    - user: root
    - group: root
  service.enabled:
    - name: workernode

sadm_clusternet_route:
  file.managed:
    - name: /etc/systemd/system/clusternet-route.service
    - source: salt://prologin/files/finale/clusternet-route.service
    - mode: 755
    - user: root
    - group: root
  service.enabled:
    - name: clusternet-route
