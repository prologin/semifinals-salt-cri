isolate_package:
  pkg.installed:
    - name: isolate-git

finale:
  user.present:
    - fullname: Finale Prologin 2020
    - shell: /bin/bash
    - home: /home/finale
    - system: False
    - groups:
      - isolate

get_prologin2020_package:
  file.managed:
    - name: /root/prologin2020_plante-r113-1-x86_64.pkg.tar.zst
    - source: salt://prologin/files/finale/prologin2020_plante-r113-1-x86_64.pkg.tar.zst
    - mode: 600
    - user: root
    - group: root

install_prologin2020_package:
  cmd.run:
    - name: /usr/bin/pacman --noconfirm -U /root/prologin2020_plante-r113-1-x86_64.pkg.tar.zst
    - runas: root

clone_sadm_ansible:
  git.latest:
    - name: https://github.com/prologin/sadm
    - target: /home/finale/sadm
    - force_reset: True
    - force_clone: True
    - rev: ansible
    - user: finale

sadm_venv:
  cmd.run:
    - name: /usr/bin/python3 -m venv /home/finale/sadm/.venv
    - runas: finale

sadm_install_dependencies:
  cmd.run:
    - name: /home/finale/sadm/.venv/bin/pip install -r requirements.txt
    - cwd: /home/finale/sadm
    - runas: finale

sadm_workernode_config:
  file.managed:
    - name: /etc/prologin/workernode.yml
    - source: salt://prologin/files/finale/workernode.yml
    - mode: 640
    - user: root
    - group: finale
    - makedirs: True

sadm_timeauth_config:
  file.managed:
    - name: /etc/prologin/timeauth.yml
    - source: salt://prologin/files/finale/timeauth.yml
    - mode: 644
    - user: root
    - group: root

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

tmpfs_tmp:
  mount.mounted:
    - name: /tmp
    - device: tmpfs
    - fstype: tmpfs

tmpfs_isolate:
  mount.mounted:
    - name: /var/lib/isolate
    - device: tmpfs
    - fstype: tmpfs
