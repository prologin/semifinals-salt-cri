base:
  '*':
    - ssh.common
    - pkgs.common

  'pie-archlinux-*':
    - main.pie-archlinux
    - pkgs.pie-archlinux
    - pkgs.misc
    - pkgs.xorg
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-iso
    - pkgs.dev-ruby
    - pkgs.dev-sdl
    - pkgs.dev-torrent
    - pkgs.vcsn

  'sup-archlinux-*':
    - main.sup-archlinux
    - pkgs.sup-archlinux
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.doc
    - pkgs.ocaml

  'browser-archlinux-*':
    - main.browser-archlinux
    - pkgs.browser-archlinux
    - pkgs.xorg

  'coding-archlinux-*':
    - main.coding
    - pkgs.coding
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-python

  'dump-*':
    - main.dump
    - pkgs.dump

  'fioi-archlinux-*':
    - main.fioi
    - pkgs.fioi
    - pkgs.misc
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-sdl
    - pkgs.archlinux
    - pkgs.ocaml
