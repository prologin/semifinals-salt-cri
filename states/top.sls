base:
  '*':
    - meta.commons

  G@caller:arch_creator:
    - meta.arch_creator

  G@'os:Arch':
    - meta.os.archlinux

  'pie-archlinux-*':
    - meta.pie
    - meta.xorg
    - display.wm.xfce

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
