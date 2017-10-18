#!/bin/sh

IMAGE_NAME=$(cat /proc/cmdline | sed "s/.*dump_image=\([^ ]*\).*/\1/")
DISK_NAME=$(cat /proc/cmdline | sed "s/.*dump_disk=\([^ ]*\).*/\1/")
NFS_SERVER="clone-store-1.pie.cri.epita.net"
NFS_DIR="/srv/nfs"

[[ -z "IMAGE_NAME" ]] && echo "Error: Empty image name" && exit 1
[[ -z "DISK_NAME" ]] && echo "Error: Empty disk name" && exit 1

echo "Dumping image $IMAGE_NAME"

echo "Mount $NFS_SERVER:$NFS_DIR"

mkdir -p /home/partimag
mount -t nfs4 -o ro $NFS_SERVER:$NFS_DIR /home/partimag

echo "Mount done"
echo "Start dump"

ocs-sr -g auto -e1 auto -e2 -r -j2 -scr -p choose restoredisk $IMAGE_NAME $DISK_NAME

echo "Done"
