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
