#!/bin/sh

EXEC_URL=$(cat /proc/cmdline | sed "s/.*exec-url=\([^ ]*\).*/\1/")
wget "${EXEC_URL}" -O /tmp/script.sh
chmod +x /tmp/script.sh
/tmp/script.sh
sleep 5
poweroff
