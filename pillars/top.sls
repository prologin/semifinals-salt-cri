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
    - pkgs.dev-ruby
    - pkgs.dev-rust
    - pkgs.dev-sdl
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.vcsn
    - pkgs.xorg

  'hadoop-archlinux-*':
    - main.hadoop-archlinux
    - dev.spark.spark-1-6-3
    - pkgs.cd68k
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-java
    - pkgs.dev-scala
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.xorg
    - ssh.hadoop

  'sup-archlinux-*':
    - main.sup-archlinux
    - pkgs.desktop
    - pkgs.dev
    - pkgs.doc
    - pkgs.misc
    - pkgs.ocaml
    - pkgs.sup-archlinux
    - pkgs.xorg

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
    - pkgs.archlinux
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-sdl
    - pkgs.fioi
    - pkgs.misc
    - pkgs.ocaml
    - pkgs.xorg

  'cri-archlinux-*':
    - main.cri-archlinux
    - pkgs.cd68k
    - pkgs.cri-archlinux
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-iso
    - pkgs.dev-ruby
    - pkgs.dev-sdl
    - pkgs.dev-torrent
    - pkgs.vcsn
    - pkgs.xorg

  'gpgpu-archlinux-*':
    - main.gpgpu-archlinux
    - pkgs.desktop
    - pkgs.dev
    - pkgs.gpgpu
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.xorg
