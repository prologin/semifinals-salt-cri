base:
  '*':
    - main.common
    - ssh.common
    - pkgs.common

  'pie-archlinux-*':
    - main.pie-archlinux
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-iso
    - pkgs.dev-ruby
    - pkgs.dev-rust
    - pkgs.dev-sdl
    - pkgs.dev-torrent
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
    - pkgs.dev-scala
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.xorg
    - ssh.hadoop
    - dev.spark.spark-1-6-3

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

  'dump-*':
    - main.dump
    - pkgs.dump

  'exec-archlinux-*':
    - main.exec-archlinux

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
