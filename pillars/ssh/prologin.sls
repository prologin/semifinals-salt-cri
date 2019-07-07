openssh:
   auth:
     james_key:
       - user: root
        present: True
        enc: ssh-25519
        name: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII/9hQ0Nrdb1y4jQFjGyVhDfjYeASmKEr8OFsb/5Su7J j4m3s@jormungand"
 
     multun_labuskey:
       - user: root
        present: True
        enc: ssh-25519
        name: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG85M/+nBugLItuxJjRO3r5yiRUzc6ucYkijF+Br+9Mr multun@derheynn"
 
     multun_otherkey:
       - user: root
        present: True
        enc: ssh-25519
        name: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILWd0AE2okq1B8H6DrqwcKBJGTlMK+X/IYBN/QEBWtuo multun@labus"
 
     multun_anotherkey:
       - user: root
        present: True
        enc: ssh-25519
        name: "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAjJn/I+lIEeQ3u8AFkLQBc/JXLvIhaAW5hS2Ufucg8V"
