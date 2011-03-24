#!/bin/sh
# Reset all failcounts

primary="node1"
secondary="node2"

for resource in pingnet-clone drbdlinks mount_srv apache2 virt-ip pingnet drbd_r0 mysql fs-ip
do
    echo "\033[38;6;33mDeleting count of $resource on $primary\033[39m" `crm resource failcount $resource delete $primary`
    echo "\033[38;5;31mDeleting count of $resource on $secondary\033[39m" `crm resource failcount $resource delete $secondary`
done
