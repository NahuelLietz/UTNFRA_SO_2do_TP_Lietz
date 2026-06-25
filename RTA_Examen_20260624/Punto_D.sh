#!/bin/bash
 mkdir -p templates
 cat << 'EOF' > templates/datos_alumno.j2
 at << 'EOF' > templates/datos_equipo.j2
 cat << 'EOF' > templates/datos_equipo.j2
 cat << 'EOF' > playbook.yml
 - /tmp/2do_parcial/alumno
 - /tmp/2do_parcial/equipo
 src: templates/datos_alumno.j2
 dest: /tmp/2do_parcial/alumno/datos_alumno.txt
 src: templates/datos_equipo.j2
 dest: /tmp/2do_parcial/equipo/datos_equipo.txt
 sudo ansible-playbook playbook.yml
 cat /tmp/2do_parcial/alumno/datos_alumno.txt
 cat /tmp/2do_parcial/equipo/datos_equipo.txt
 (echo '#!/bin/bash'; history | grep -E 'ansible-playbook|templates|playbook.yml|/tmp/2do_parcial' | awk '{$1=""; print $0}') > Punto_D.sh
