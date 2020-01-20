#!/bin/bash


@The variable NM_CONTROLLED determines if the interface will be managed via NetworkManager (yes) or via the legacy network scripts (no).

sudo sed -i 's/NM_CONTROLLED=no/NM_CONTROLLED=yes/g' /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo sed -i 's/PEERDNS=no/PEERDNS=yes/g' /etc/sysconfig/network-scripts/ifcfg-enp0s3

sudo systemctl restart NetworkManager.service


