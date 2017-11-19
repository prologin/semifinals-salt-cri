dev-tcpdump-install:
  pkg.installed:
    - pkgs:
      - tcpdump
      - wireshark-gtk

dev-tcpdump-configure-tcpdump:
  cmd.run:
    - name: setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/tcpdump
    - require:
      - pkg: dev-tcpdump-install

dev-tcpdump-configure-wireshark:
  cmd.run:
    - name: setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
    - require:
      - pkg: dev-tcpdump-install

dev-tcpdump-configure-pam_epita:
  file.line:
    - name: /usr/local/bin/pam_epita
    - content: usermod -a -G wireshark $PAM_USER
    - mode: insert
    - after: 'if [ "$PAM_TYPE" = "open_session" ]; then'
