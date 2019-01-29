openssh:
  auth:
    multun_laptop:
      - user: root
        present: True
        enc: ssh-ed25519
        name: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE17/hdaM+XL/iHqE0OQKadTBCwRkt2z5CQS5k8kE2w6 multun@thinkingbus"
    multun_lab:
      - user: root
        present: True
        enc: ssh-ed25519
        name: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILWd0AE2okq1B8H6DrqwcKBJGTlMK+X/IYBN/QEBWtuo multun@labus"