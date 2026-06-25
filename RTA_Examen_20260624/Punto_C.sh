#!/bin/bash
 docker ps
 mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
 sudo dnf-plugins-core config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
 sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
 sudo systemctl enable --now docker
 sudo lvcreate -L 5M -n lv_docker vg_datos
 sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
 sudo mkdir -p /var/lib/docker
 sudo mkdir -p /work
 echo '/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0' | sudo tee -a /etc/fstab
 sudo systemctl restart docker
 sudo systemctl status docker
 (echo '#!/bin/bash'; history | grep -E 'wipefs|pvcreate|vgcreate|lvcreate|mkfs|mkswap|mkdir|fstab|mount|swapon|systemctl' | awk '{$1=""; print $0}') > ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
 docker login -u lietzn
 sudo usermod -a -G docker nahuellietz
 mkdir -p docker
 cd proyecto_docker
 cd ~/docker
 cd docker
 cat << 'EOF' > docker-compose.yml
 web_server:
 docker compose up -d
 docker ps
 (echo '#!/bin/bash'; history | grep -E 'usermod|su -|mkdir|docker|compose|web_server' | awk '{$1=""; print $0}') > Punto_C.sh
