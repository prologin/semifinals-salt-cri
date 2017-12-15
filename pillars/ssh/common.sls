openssh:
  auth:
    mareo_lab_key:
      - user: root
        present: True
        enc: ssh-rsa
        name: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRjWonANQ/xE+bAU6e0Wd2s97ONLuHP9EPxdeQTf48NdMOBq/Zyuej8xRd91tHjsF230wMkQemDkSWgEmM9w99yXVt3IOtRizchAQLKEq+3R0eU6gES/gFZ9VL6bNei0jvWAhqNDn7bb/k5FmS+Joy4nsINxmHPBzhJFlcGfENrpUl/lPfWOoldkEjNZ8Wzaxx+OIcvoxsITlOVLu5zD/sRhDS82R6Dr4xPnJxVUxHfmB+ypRTfjA/gBW3JLFxe/GvgpfNpX20OsZPlzyLedW/Km3v3kUFDM5ygAArIAi/LCGohYLF+qkofrj3IM+mxI98ysa8g6SA5jKpC/SA0mZbadUfQJRrFYJp0cJcweMqshqwYG1F4uxm0dv2XTMaoSTn+RixKhIYi9TZK6FWzSZf96tb+n17ZybSv+y+KB1Qa5eJxxaGdFbwO2XAXLtTlhSfPW96AKOSD+d+0N+lJLPOj8HpQiv7+Qq2tUmtNIbelfg7Fzeei9WcsAJvXiHlj5ZOKREsZwe8Z+7gy1XtS57yaq2ogx27vpEYpPqjpX75LSvwxuDBr/5/gEZfDhucLo0LNT9w3mxu6LZCuQB1hNER2IoIADEvizEHyEBguqPYWo7542WJn87nXpy9wwYo7R5Pmv0hVOXCl9NcuEIcZDcvB31cjLLOEf2C546umjMVvw== Marin Hannache (Mareo)"

    antoine_lab_key:
      - user: root
        present: True
        enc: ssh-rsa
        name: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDjP773kL8olTsi6RZFgWLTRTb1fwGzc4mD7jSnAAI1DKDamaL/+UUoWBGi8MEzpz9p5BNCPt0WxnFHoF4wq3EQsl7FgnEKcXkCBBbabUNQ5lGdK3cAZz26QpceqcAbToNU3S/GiVjwEcROlF/Q9ZI9swHuG0lfQ3+qqarFzCIEJC+1kRvrRDQZJImcuf2uhGkMwDSagg6S7ySMfMilBIqZqAWrB5UVEQQMAL23209h159Iyu+eZjKkjcUghyRnJkgFvWQAvlx6aXk+al5awMfXMSY7lSOI57L2SV+xN5CkiSytEuSpTKfVjrt3IrlkE2acyTQg/h2bEvxmvUlAkJwMsFJnHBKnNWQB39zV58Xy5yessmaMCYzPcGIWGZvk/SGEvi7l3kn36Tnj71+fkru5YeSdmZQmHFvWsfMM1N17u4aY8g4kect8hMPW014dJpi/AljH9F73rV8c6yrbCKVZkwxguV+j6JhkW6bA3cQXMSlhIDuK161DJ8cPtd7ZLW7FEO1iGjSuVrTPyzJx2WaSrNISS07BIItis1FVDSAJ74FtbYnWcGmBnZmjYHbwDjAG+uXFGhaWxrGkLxtR0h3U8SmMuoudZzh7ThVy55GkBOH1YzP+XHC2AIOq3ubvmhH2/aazdWnSQVc0ydVQs1VVD0AgXweGjUS6uzjmrp7Jgw== bardou_a@epita.fr"

    jordan_lab_key:
      - user: root
        present: True
        enc: ssh-rsa
        name: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC17pnCLEvu1QCkOfl+0wsFvY/IlNtV78cYmS2Ei2R6Py1aRT1rRzdR6eBaLVL0zayhH9Nu5CWzsd/u+ag3m+S+MHHF0sBoXJZKo/gV/L4hc8mEbS7QLD1IoMX7wHGB1g5nVPXLAwenwH8wGavfD+N4yj4MtG+5ThBXi72CEQ722/BpEOU+u4BilxFtN72bc6dZHrx/ekDDD638fcTykzPMPXUAIqq4NrFTYSU+NwRyrkSAQld4u9cJc9FWgPO1kqYOpVMfYh9YqkajTaKRLcYDceGWJ8xz7dJ1bRhGLNJb7np4pKBxnMl2LVjzUGnx2Ns1dIhbFo0FK6KYqQp7o0oBhyHNNESkkzhUuB2zYNDTWy7yBjmfYWhG2Ckk4zllL4+r129KSg6B4xxbkKCExVqv9pWRKCbklHLHiGw9mvMoZbRNDvWU5cARURo4rxrHN67bubTa/L0Y3O8JTLtyVCE4y8Hk4yIpyemu7z3hbBy0KTWKsSc2cJq6f4hrNr1Qp1O6aUA3NQheabIRXaKlSt38uVUGBj/79VXXcHON8gd1yUpqP/iGN064DMh5RaOWyNPBaHm2WrQKfvim2TH8RZgVn++6qCwwgo8jMXLAl2SLear3fUvrSbs7JfhT7yiF1V/8plY/bvJuDd0OkJBjrgm+43/hVmI6EiFIghMsQMcREw== jordan@jordan"
  provide_ecdsa_keys: True
  provide_rsa_keys: True
  ecdsa:
    private_key: |
      -----BEGIN EC PRIVATE KEY-----
      MHcCAQEEIHB6XiqCnU9HMy2+WeZMi4EPxwXFZjosewu6nbvVdjC8oAoGCCqGSM49
      AwEHoUQDQgAEklKLNAiXqTgOfGuVuQlUE50V0eAKHKnKEnsNbz0ydKPd8oPC5taR
      s1vFN3jqwjClQsMPDT975bk8HgroSrDrsw==
      -----END EC PRIVATE KEY-----
    public_key: "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJJSizQIl6k4DnxrlbkJVBOdFdHgChypyhJ7DW89MnSj3fKDwubWkbNbxTd46sIwpULDDw0/e+W5PB4K6Eqw67M= root@blue"

  rsa:
    private_key: |
      -----BEGIN RSA PRIVATE KEY-----
      MIIEowIBAAKCAQEAtF3SdPNcbxb8U49OD75PEKBj8PTOoYrQpW1zkTIc8Oegtv/g
      onZ9Xr6i/KQp5cOkKlKI+A+vcsrTP3lyTo31xVMlH7qh3UmrqUlT7ul9HpRHSfsG
      dzRZnGtshbv85clwFR+V8WuJj7lVXfqzivPWd51fEsFZ6GUMaok0YZgBMeYXsFsd
      QWaN+E1WeNuDi4FFM34E/GuXWkoeK9z6CYkWfIR2U/a71XEjpBH8HJnQbrIKHBUc
      wwnjs9w4elwIoY3e9eO88ghKbICHKjuqREbK4reaNwEsZe+O9tdyEXj7hYOY2Z1T
      ybEmsW3OTHYBY1qAPdc4yC69kILIck3JfLQm+QIDAQABAoIBAD3HpT7J3O9wQB2f
      CG38EbjwN0thjyVmFvGS+/LP53nc3P/RxW/ghjDdu5Yt5Ov+h0y32JKfTMlVD+a+
      AplFptlgEWc81hSmF1Z093ruHx1KTODaSuyp0cfyQ8nLCmTrCqkxmHqJCyVfpg36
      wWTnAJ8YGGikMdeYRRh4xqhnGIGuauxlNY2QFhIdcpXDxDQ+VFWCfaIYXnYLr2aT
      Qb3XHI7OCZD1fq70m5Llr958yM4kglneLGsH9c7DWDBltMDbRNA1bv7QGf32x94J
      SKVskRufvR2SWTuG7WSXbE0GyAbt7f6IdZMdiEB3n6RvXzR4Qk3TUhgMtv9Kcbf1
      f35PSAECgYEA5+k4OKd4efZ4Lq5LigESrz2dZXJg9xNdwI8n46lEb3PgQDWHwxFR
      qdfI5e/ExjA68FH498b7uMkLA6OCJp1Wm5Bv21yjbxqDeYLFmJtDDRbfT2ieozAa
      Dp9JYVH5QYWMbwwvCaJH5wdiMVPsICYbivrrR9ltmaFB+G01Z4OzrzECgYEAxxn5
      c3DPkJs/HVqjYozGb8gAJ2yYlBHkdR/exv2ir7mDRaPTsndEZXVqz7ISFT/0ob7K
      gqrO16LSOM+Tkx3CyQNZ+uXfMOtAURyXYlMyMh3DNX0C2Jt3P0CxFrf7kD3A6imA
      rAGa7qwNzS/WSqkuRsEfwy+52kOJPXjhAq6R0kkCgYEAuVe52AV4Erk5Wc1wj63F
      2gn7Ne2Qs0ZmAhQnRBqumAha69YcV3kK9BuB8sqKT/6RzCknOhdsbEU4qULPLL9I
      TXHFA+Lot03QT5eFBi7oCpkCBbvONQund5I0GjRiacwq7UEmgqOQpYJQJq40o4jx
      METTLwwFPOgVCk91g/JM87ECgYAOKov0Kceq+1DPTt6nKWsJEwrnwzNL/cXqi3z3
      XZ6QsDtl3hU28oN8UJFr+7iLqIRIaeHQ0ERtVVltz18prYlpcgKZ9ncd7O8jlkwz
      I8ZDiJiWGrH0JYOjjX/MJQUSK0KpppBQLMEQUE+fFNNDdqwjPqR6589qdzmxlQM1
      hKQ9eQKBgFq8gJVUil2DJLFmLpfoJ1FH3R/3c3cApjcka1LKSZh23vTGvC4hLmVP
      d6R9QgFpTnvT9SqhizvVqrmskttA/Oaj5NZHeCjZyK3FTCSMNTSAgWECM34pmJBC
      1Ygpy8i3y1nYEzxU10CTxjY4giYc/0OwIAdABuU5IpnvlLbmYNo8
      -----END RSA PRIVATE KEY-----
    public_key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0XdJ081xvFvxTj04Pvk8QoGPw9M6hitClbXORMhzw56C2/+Cidn1evqL8pCnlw6QqUoj4D69yytM/eXJOjfXFUyUfuqHdSaupSVPu6X0elEdJ+wZ3NFmca2yFu/zlyXAVH5Xxa4mPuVVd+rOK89Z3nV8SwVnoZQxqiTRhmAEx5hewWx1BZo34TVZ424OLgUUzfgT8a5daSh4r3PoJiRZ8hHZT9rvVcSOkEfwcmdBusgocFRzDCeOz3Dh6XAihjd7147zyCEpsgIcqO6pERsrit5o3ASxl747213IRePuFg5jZnVPJsSaxbc5MdgFjWoA91zjILr2QgshyTcl8tCb5 root@blue"

sshd_config:
  PermitRootLogin: 'prohibit-password'
  PermitEmptyPasswords: 'no'
  AllowUsers: 'root'
  UsePam: 'yes'
  AuthorizedKeysFile: '.ssh/authorized_keys'
  Subsystem: 'sftp    /usr/lib/ssh/sftp-server'
  ChallengeResponseAuthentication: 'no'
  X11Forwarding: 'yes'
