base:
  '*':
    - meta.commons

  'virtual_subtype:chroot':
    - match: grain
    - meta.arch_creator

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
