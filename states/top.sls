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
    - display.wm.xfce
    - dev.tcpdump

  'sup-archlinux-*':
    - meta.pie
    - meta.xorg
    - display.wm.xfce
    - dev.tuareg

  'browser-archlinux-*':
    - meta.xorg-nodm
    - auth.autologin

  'coding-archlinux-*':
    - meta.pie
    - meta.xorg
    - display.wm.xfce

  'dump-*':
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
