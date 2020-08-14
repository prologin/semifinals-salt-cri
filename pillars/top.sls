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
    - pkgs.dev-spider
    - pkgs.dev-tc
    - pkgs.k
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.xorg

  'ji-archlinux-*':
    - main.ji-archlinux
    - pkgs.desktop
    - pkgs.dev
    - pkgs.doc
    - pkgs.misc
    - pkgs.sup-archlinux
    - pkgs.ji-archlinux

  'gcc-archlinux-*':
    - lang.fr
    - ssh.gcc-archlinux
    - main.gcc-archlinux
    - repos.prologin
    - udev.microbit
    - pkgs.browser-archlinux
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.kde
    - pkgs.gcc-archlinux

  'prologin-archlinux-*':
    - lang.fr
    - ssh.gcc-archlinux
    - repos.prologin
    - main.prologin-archlinux
    - udev.microbit
    - pkgs.browser-archlinux
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.prologin-archlinux

  'prologin-finale-*':
    - ssh.prologin-finale
    - repos.prologin
    - main.prologin-finale
    - pkgs.prologin-finale

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
    - pkgs.pie-archlinux
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

  'ricou-archlinux-*':
    - main.ricou-archlinux
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-ruby
    - pkgs.misc
    - pkgs.pie-archlinux
    - pkgs.python-bigdata
    - pkgs.xorg
