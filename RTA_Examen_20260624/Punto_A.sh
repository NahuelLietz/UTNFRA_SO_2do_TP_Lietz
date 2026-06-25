#!/bin/bash
 mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
 sudo systemctl enable --now docker
 (echo '#!/bin/bash'; history | grep -E 'dnf|systemctl|git clone|Precondicion' | awk '{$1=""; print $0}') > ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
 sudo pvcreate /dev/sdb
 umount /dev/mapper/vg_oracle-lv_oracle
 sudo wipefs -a /dev/sdb
 sudo wipefs -a /dev/sdb1
 sudo wipefs -a /dev/sdb2
 sudo wipefs -a /dev/sdb1
 sudo pvcreate /dev/sdb1 /dev/sdb2
 sudo vgcreate vg_datos /dev/sdb1
 sudo vgcreate vg_temp /dev/sdb2
 sudo lvcreate -L 5M -n lv_docker vg_datos
 sudo lvcreate -L 1.5G -n lv_workareas vg_datos
 sudo lvcreate -L 512M -n lv_swap vg_temp
 sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
 sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
 sudo mkswap /dev/mapper/vg_temp-lv_swap
 sudo mkdir -p /var/lib/docker
 sudo mkdir -p /work
 echo '/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0' | sudo tee -a /etc/fstab
 echo '/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0' | sudo tee -a /etc/fstab
 echo '/dev/mapper/vg_temp-lv_swap swap swap defaults 0 0' | sudo tee -a /etc/fstab
 sudo mount -a
 sudo swapon /dev/mapper/vg_temp-lv_swap
 sudo systemctl restart docker
 sudo systemctl status docker
 (echo '#!/bin/bash'; history | grep -E 'wipefs|pvcreate|vgcreate|lvcreate|mkfs|mkswap|mkdir|fstab|mount|swapon|systemctl' | awk '{$1=""; print $0}') > ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
