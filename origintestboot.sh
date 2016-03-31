#!/bin/bash

#TODO: Melhorar o tempo de provisionamento!
if [ ! -f /root/.bootstrapped ]; then
  yum makecache fast
  yum update -y
  yum install -y docker

  sed -i 's/ResourceDisk.Format=y/ResourceDisk.Format=n/' /etc/waagent.conf
  systemctl restart waagent

  umount /mnt/resource

  curl https://getup.blob.core.windows.net/scripts/docker-storage-config > /bin/docker-storage-setup

  touch /root/.bootstrapped
fi