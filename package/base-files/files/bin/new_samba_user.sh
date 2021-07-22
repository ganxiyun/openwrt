#/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage $0 USER SAMBA_PASSWORD"
  echo "  this use can not login"
fi

adduser -S -D -h /var -G nogroup $1

(echo $2; echo $2) | smbpasswd -a -s $1


echo samba user "\"$1\"" has been added successfully.
