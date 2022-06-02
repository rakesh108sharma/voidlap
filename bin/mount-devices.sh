#!/bin/dash
#
# ! autostart.sh !

##### BEGIN

# deletes all directory entries of unmounted devices
sudo udevil clean

# checks if wanted partitions of sdc are not mounted AND mounts them

if [ "$(udevil info /dev/disk/by-uuid/86739b33-8c7d-46c0-956e-0953dc00e346 | rg "is mounted" | awk '{ print $3 }')" -eq 1 ]; then
    herbe "disk ..346" "    already mounted!"
else
    sudo udevil mount /dev/disk/by-uuid/86739b33-8c7d-46c0-956e-0953dc00e346 ||
        herber "CANNOT mount ..346"
fi

sleep 3

if [ "$(udevil info /dev/disk/by-uuid/05923144-d224-4ac7-8777-f6a774ff5fb5 | rg "is mounted" | awk '{ print $3 }')" -eq 1 ]; then
    herbe "disk ..fb5" "    already mounted"
else
    sudo udevil mount /dev/disk/by-uuid/05923144-d224-4ac7-8777-f6a774ff5fb5 ||
        herber "CANNOT mount ..fb5"
fi

exit 0

##### END
