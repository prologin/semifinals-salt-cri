base:
  '*':
    - meta.commons

  'G@virtual_subtype:chroot or *arch_creator':
    - match: compound
    - meta.arch_creator

  'pie-archlinux-*':
    - meta.pie
    - meta.xorg
    - network.dns.static_resolv_conf
    - network.nswrappers
    - system.docker
    - display.wm.xfce
    - dev.tcpdump
    - dev.tc

  'ji-archlinux-*':
    - match: glob
    - meta.pie
    - meta.xorg
    - network.dns.static_resolv_conf
    - display.wm.xfce

  'prologin-archlinux-*':
    - display.redshift
    - network.dns
    - network.dhcp
    - network.firewall
    - meta.pie
    - meta.xorg
    - system.keyboard
    - system.locale
    - display.wm.xfce
    - gcc.wallpaper
    - system.gcc-desktop-env

  'gcc-archlinux-*':
    - display.redshift
    - gcc.bashrc
    - gcc.aventure
    - gcc.listes_tests
    - meta.pie
    - meta.xorg
    - network.dns
    - network.dhcp
    - display.wm.xfce
    - system.keyboard
    - system.locale
    - system.gcc-desktop-env
    - gcc.locale-generation

  'hadoop-archlinux-*':
    - meta.pie
    - meta.xorg
    - network.dns.static_resolv_conf
    - display.wm.xfce
    - dev.spark
    - dev.spark.toree

  'sup-archlinux-*':
    - meta.pie
    - meta.xorg
    - misc.git-scripts
    - display.wm.xfce
    - dev.tuareg

  'browser-archlinux-*':
    - meta.xorg-nodm
    - auth.autologin

  'dump-*':
    - auth.exec

  'exec-archlinux-*':
    - auth.exec

  'fioi-archlinux-*':
    - meta.pie
    - meta.xorg
    - display.wm.xfce
    - dev.tuareg

  'cri-archlinux-*':
    - meta.pie
    - meta.xorg
    - system.sudo_all
    - dev.tcpdump

  'gpgpu-archlinux-*':
    - meta.pie
    - meta.xorg
    - display.wm.xfce

  'ricou-archlinux-*':
    - meta.pie
    - meta.xorg
    - network.dns.static_resolv_conf
    - display.wm.xfce
