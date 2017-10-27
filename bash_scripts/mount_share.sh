#!/bin/bash

# chmod +x mount_share.sh 
sudo mount -t vboxsf VirtualBox_Shared /mnt/virtualbox_shared
echo "shared folder successfully mounted @ /mnt/virtualbox_shared"
