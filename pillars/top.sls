base:
  '*':
    - ssh.common
    - pkgs.common

  'pie-archlinux-*':
    - main.archlinux
    - pkgs.cd68k
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.k
    - pkgs.dev-func
    - pkgs.dev-python
    - pkgs.dev-ruby
    - pkgs.dev-sdl
    - pkgs.dev-tc-backend
    - pkgs.archlinux

  'sup-archlinux-*':
    - main.sup-archlinux
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.sup-archlinux
    - pkgs.ocaml

  'browser-archlinux-*':
    - main.browser-archlinux
    - pkgs.xorg
    - pkgs.browser-archlinux

  'coding-archlinux-*':
    - main.coding
    - pkgs.xorg
    - pkgs.desktop
    - pkgs.dev
    - pkgs.dev-python
    - pkgs.coding
