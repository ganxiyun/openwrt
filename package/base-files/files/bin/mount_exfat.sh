#/bin/bash

# umask is needed for samba server otherwise can not read/write in samba.

if [ "$#" -ne 2 ] || [ -f "$2" ] ; then
  echo "Usage: $0 DEVICE_PATH MOUNT_POINT"
  echo "    DEVICE_PATH like /dev/sda2"
  echo "    MOUNT_POINT directory will be created if not exists"
  exit 1
fi

mkdir -p $2 || echo "$2 has been created"
mount -t exfat -o rw,umask=000 $1 $2

echo "$1 has been mounted on $2 successfully"
