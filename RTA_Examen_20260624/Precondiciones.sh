#!/bin/bash
 git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
 sudo dnf install -y git
 git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
 git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
 chmod +x script_Precondicion.sh
 ./script_Precondicion.sh
 ./script_Precondicion.sh
 ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
 chmod +x script_Precondicion.sh
 ./script_Precondicion.sh
 ./script_Precondicion.sh
 ./script_Precondicion.sh
 source script_Precondicion.sh
 . script_Precondicion.sh
 . script_Precondicion.sh
 source script_Precondicion.sh
 ./script_Precondicion.sh
 ./script_Precondicion.sh
 git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
 chmod +x script_Precondicion.sh
 source script_Precondicion.sh
 touch ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
 ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
 sudo dnf -y install dnf-plugins-core
 sudo dnf-plugins-core config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
 sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
 sudo systemctl enable --now docker
 sudo dnf install -y ansible
 cat << 'EOF' > ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
 (echo '#!/bin/bash'; history | grep -E 'dnf|systemctl|git clone|Precondicion' | awk '{$1=""; print $0}') > ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
