base:
  '*':
    - ssh.common
    - pkgs.common

  'pie-archlinux-*':
    - main.pie-archlinux
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-func
    - pkgs.dev-java
    - pkgs.dev-k
    - pkgs.dev-prpa
    - pkgs.dev-ruby
    - pkgs.dev-sdl
    - pkgs.dev-sql
    - pkgs.dev-tc
    - pkgs.dev-tc-backend
    - pkgs.dev-nodejs
    - pkgs.matlab
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.vcsn
    - pkgs.xorg

  'hadoop-archlinux-*':
    - main.hadoop-archlinux
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-java
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.xorg
    - ssh.hadoop

  'sup-archlinux-*':
    - main.sup-archlinux
    - pkgs.sup-archlinux
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.doc
    - pkgs.ocaml
    - pkgs.misc

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

  'cri-archlinux-*':
    - main.cri-archlinux
    - pkgs.cri-archlinux
    - pkgs.xorg
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-iso
    - pkgs.dev-ruby
    - pkgs.dev-sdl
    - pkgs.dev-torrent
    - pkgs.vcsn

  'gpgpu-archlinux-*':
    - main.gpgpu-archlinux
    - pkgs.pie-archlinux
    - pkgs.gpgpu
    - pkgs.misc
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
