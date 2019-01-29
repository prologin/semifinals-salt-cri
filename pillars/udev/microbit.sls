udev-rules:
  99-microbit:
    - "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"0d28\", MODE=\"0666\""
