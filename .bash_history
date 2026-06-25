docker ps
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
sudo dnf install -y git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ~
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc
./script_Precondicion.sh
source ~/.bashrc
cd 
cd ./UTN-FRA_SO_Examenes/202406/
.cd
cd
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
history -a
~/.bashrc
cd UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
sudo chmod 644 /home/nahuellietz/.bash_history
~/.bashrc
sudo chmod 644 /home/nahuellietz/.bash_history
sudo ~/.bashrc
source ~/.bashrc
sudo chattr -a /home/nahuellietz/.bash_history
source ~/.bashrc
./script_Precondicion.sh
sudo chmod 644 /home/nahuellietz/.bash_history
source ~/.bashrc
sudo chattr -a /home/nahuellietz/.bash_history
sudo chmod 644 /home/nahuellietz/.bash_history
source ~/.bashrc
./script_Precondicion.sh
source script_Precondicion.sh
. script_Precondicion.sh
source ~/.bashrc && history -a
. script_Precondicion.sh
source script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc
./script_Precondicion.sh
rm -rf ~/UTN-FRA_SO_Examenes
-cd
~
cd ~
rm -rf ~/UTN-FRA_SO_Examenes
set -o history
export HISTFILE=~/.bash_history
history -g
set -o history
export HISTFILE=~/.bash_history
history -g
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd ~/UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
source script_Precondicion.sh
source ~/.bashrc && history -a
sudo fdisk /dev/sdb
lsblk
sudo fdisk -l | grep "Disco /dev/"
sudo lshw -class disk -short
sudo fdisk -l | grep "Disco /dev/"
sudo fdisk /dev/sdb
sudo fdisk /dev/sda
fdisk /dev/sdb
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
touch ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc && history -a
echo $PATH_REPO
sudo chown -R nahuellietz:nahuellietz ~/RTA_Examen_20260624
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo dnf -y install dnf-plugins-core
sudo dnf-plugins-core config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo dnf install -y ansible
cat << 'EOF' > ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
cd ~
EQF
EOF

history -a
(echo '#!/bin/bash'; history | grep -E 'dnf|systemctl|git clone|Precondicion' | awk '{$1=""; print $0}') > ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
cat ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
chmod +x ~/RTA_Examen_$(date +%Y%m%d)/Precondiciones.sh
lsblk
sudo pvcreate /dev/sdb
poweroff
lsblk
fdisk /dev/sdb
sudo  fdisk /dev/sdb
slvdisk
lsblk
history
}lsblk
lsblk
sudo  fdisk /dev/sdb
lsblk
umount /dev/mapper/vg_oracle-lv_oracle
sudo wipefs -a /dev/sdb
lsblk
sudo fdisk /dev/sdb
lsblk
sudo partprobe /dev/sdb
lsblk
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
history -a
(echo '#!/bin/bash'; history | grep -E 'wipefs|pvcreate|vgcreate|lvcreate|mkfs|mkswap|mkdir|fstab|mount|swapon|systemctl' | awk '{$1=""; print $0}') > ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
chmod +x ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
cat ~/RTA_Examen_$(date +%Y%m%d)/Punto_A.sh
docker login -u lietzn
cd ~/RTA_Examen_$(date +%Y%m%d)
cd ~/RTA_Examen
cd /RTA_Examen_20260624
cd ~/RTA_Examen_20260624
cat << 'EOF' > lietzAltaUser-Groups.sh
if [ $# -ne 2 ]; then
    echo "Error: Se requieren exactamente 2 parámetros."
    echo "Uso: $0 <Usuario_Origen_Clave> <Path_Lista_Usuarios>"
    exit 1
fi

USUARIO_ORIGEN=$1
LISTA_USUARIOS=$2

# extracción metodologica del Hash de la clave 
PASSWORD_ENCRIP=$(sudo grep "^${USUARIO_ORIGEN}:" /etc/shadow | cut -d: -f2)

if [ -z "$PASSWORD_ENCRIP" ]; then
    echo "Error: No se pudo obtener la clave del usuario base o el usuario no existe."
    exit 1
fi

# lectura y procesamiento con IFS 
while IFS=, read -r USUARIO GRUPO HOME_DIR || [ -n "$USUARIO" ]; do
    
    # omitir lineas vacias o comentarios que arranquen con #
    [[ -z "$USUARIO" || "$USUARIO" =~ ^# ]] && continue
    
    USUARIO=$(echo "$USUARIO" | xargs)
    GRUPO=$(echo "$GRUPO" | xargs)
    HOME_DIR=$(echo "$HOME_DIR" | xargs)

    # crea el grupo si no existe en el sistema
    if ! getent group "$GRUPO" > /dev/null; then
        sudo groupadd "$GRUPO"
        echo "Grupo creado con éxito: $GRUPO"
    fi

    # Crea usuario con los modificadores requeridos y la clave(-p)
    if ! getent passwd "$USUARIO" > /dev/null; then
        sudo useradd -m -d "$HOME_DIR" -g "$GRUPO" -p "$PASSWORD_ENCRIP" -s /bin/bash "$USUARIO"
        echo "usuario creado con exito: $USUARIO (grupo primario: $GRUPO, Home: $HOME_DIR)"
    else
        echo "el usuario $USUARIO ya existe en el sistema."
    fi

done < "$LISTA_USUARIOS"

echo "procesamiento de alta finalizado"
EOF

chmod +x lietzAltaUser-Groups.sh
sudo cp lietzAltaUser-Groups.sh /usr/local/bin/lietzAltaUser-Groups.sh
sudo /usr/local/bin/lietzAltaUser-Groups.sh nahuellietz ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
history -a 
(echo '#!/bin/bash'; history | grep -E 'chmod|cp|lietzAltaUser-Groups.sh' | awk '{$1=""; print $0}') > Punto_B.sh
chmod +x Punto_B.sh
sudo usermod -a -G docker nahuellietz
cd ~/RTA_Examen_20260624
mkdir -p docker
cd proyecto_docker
cd ~/docker
cd docker
cat << 'EOF' > docker-compose.yml
version: '3.8'

services:
  web_server:
    image: nginx:latest
    container_name: web_parcial_lietz
    ports:
      - "8080:80"
    restart: always
EOF

docker compose up -d
docker ps
cd
cd ~/RTA_Examen_20260624
history -a
(echo '#!/bin/bash'; history | grep -E 'usermod|su -|mkdir|docker|compose|web_server' | awk '{$1=""; print $0}') > Punto_C.sh
chmod +x Punto_C.sh
cat ~/RTA_Examen_$(date +%Y%m%d)/Punto_C.sh
cat ~/RTA_Examen_20260624/Punto_C.sh
mkdir -p templates
cat << 'EOF' > templates/datos_alumno.j2
Nombre: Nahuel Apellido: Lietz
Division: 116
EOF

at << 'EOF' > templates/datos_equipo.j2
EOF

cat << 'EOF' > templates/datos_equipo.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_distribution }}
Cantidad de Cores: {{ ansible_processor_vcpus }}
EOF

cat << 'EOF' > playbook.yml
- name: "Punto D - Segundo TP"
  hosts: localhost
  connection: local
  become: yes

  tasks:

    - name: "Crear estructura de directorios en /tmp"
      file:
        path: "{{ item }}"
        state: directory
        mode: '0755'
      loop:
        - /tmp/2do_parcial/alumno
        - /tmp/2do_parcial/equipo


    - name: "Generar datos_alumno.txt"
      template:
        src: templates/datos_alumno.j2
        dest: /tmp/2do_parcial/alumno/datos_alumno.txt


    - name: "Generar datos_equipo.txt"
      template:
        src: templates/datos_equipo.j2
        dest: /tmp/2do_parcial/equipo/datos_equipo.txt

    - name: "Configurar sudoers para el grupo 2PSupervisores"
      lineinfile:
        path: /etc/sudoers.d/2psupervisores
        line: "%2PSupervisores ALL=(ALL) NOPASSWD: ALL"
        create: yes
        mode: '0440'
        validate: '/usr/sbin/visudo -cf %s'
EOF

sudo ansible-playbook playbook.yml
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
history -a
(echo '#!/bin/bash'; history | grep -E 'ansible-playbook|templates|playbook.yml|/tmp/2do_parcial' | awk '{$1=""; print $0}') > Punto_D.sh
chmod +x Punto_D.sh
history -a
cp ~/.bash_history
cd ~
git clone https://github.com/tu-usuario-github/UTNFRA_SO_2do_TP_Lietz.git
history -a
cp -r ~/UTN-FRA_SO_Examenes/202406/ .
cp -r ~/RTA_Examen_20260624/ .
cp ~/.bash_history .
cd ~/UTNFRA_SO_2do_TP_Lietz
git clone https://github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
echo "# UTNFRA_SO_2do_TP_Lietz"
git init
mkdir -p UTNFRA_SO_2do_TP_Lietz
cd UTNFRA_SO_2do_TP_Lietz
git init
history -a
cp -r ~/UTN-FRA_SO_Examenes/202406/ .
cp -r ~/RTA_Examen_20260624/ .
cp ~/.bash_history .
git config --global user.name "Nahuel Lietz"
git config --global user.email "tu-correo@ejemplo.com"
git remote add origin https://github.com/tu-usuario-github/UTNFRA_SO_2do_TP_Lietz.git
git branch -M main
git config --global user.email "lnlietzgg@gmail.com"
git add.
git add .
git commit -m "Segundo TP Arquitectura y sistemas operativos"
git push -u origin main
git config --global user.name "NahuelLietz"
git config --global user.email "lnlietzgg@gmail.com"
git remote add origin https://github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
git init
history -a
cp -r ~/UTN-FRA_SO_Examenes/202406/ .
cp -r ~/RTA_Examen_20260624/ .
cp ~/.bash_history .
git config --global user.name "NahuelLietz"
git config --global user.email "lnlietzgg@gmail.com"
git remote add origin https://github.com/NahuelLietz-github/UTNFRA_SO_2do_TP_Lietz.git
sudo su - nahuellietz
cd UTNFRA_SO_2do_TP_Lietz
git init
history -a
cp -r ~/RTA_Examen_20260624/ .
cp ~/.bash_history .
git remote add origin https://github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
git branch -M main
git push -u origin main
git branch -M main
git remote add origin https://github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
git branch -M main
git push -u origin main
echo "# UTNFRA_SO_2do_TP_Lietz" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
git push -u origin main
git remote add origin https://github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
git push -u origin main
rm -rf .git
git init
git config user.name "Nahuel Lietz"
git config user.email "lnlietzgg@gmail.com"
git remote add origin https://NahuelLietz:git@github.com:NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git@github.com/NahuelLietz/UTNFRA_SO_2do_TP_Lietz.git
git branch -M main
history -a
cp -r ~/UTN-FRA_SO_Examenes/202406/ .
cp -r ~/RTA_Examen_20260624/ .
cp ~/.bash_history .
git add .
git commit -m "Entrega trabajo practicoNahuel Lietz"
git push -u origin main
git remote remove origin
rm -rf .git
git init
# 3. Crear el archivo README inicial que te pide GitHub
echo "# UTNFRA_SO_2do_TP_Lietz" >> README.md
# 4. Copiar TODO lo que pide la cátedra para el Punto E (Archivos y tu Historial)
history -a
