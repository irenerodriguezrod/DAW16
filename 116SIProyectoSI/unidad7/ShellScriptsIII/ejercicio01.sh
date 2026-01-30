<<COMENTARIO
Actividad: 01
Descripción: Crear un shell script en bash que permita crear de forma automática usuarios en Linux. Para ello, el script:
            - Recibe como parámetro el nombre de un archivo. Si el número de parámetros es incorrecto, o si el parámetro no corresponde al nombre de un archivo, se mostrará un mensaje de error.
            - El archivo tendrá una línea para cada grupo, con el nombre del grupo y el número de alumnos separados por el carácter dos puntos (:)
                grupo1:número1
                grupo2:número2
                …
            - El script va recorriendo las líneas del archivo y:
                o Crea el grupo. Al crear el grupo mostrará “Se ha creado el grupo …..” y si ya existe el grupo, no mostrará nada.
                o Crea los usuarios con el nombre grupo1-1, grupo1-2, etc. hasta el número de usuarios del grupo y como grupo principal el grupo correspondiente. Para cada usuario creado correctamente, mostrará el mensaje “Se ha creado el usuario …”. Por si estos usuarios existiesen los eliminará previamente al crearlos junto con su directorio personal.
            Ejemplo. Si el archivo contiene:
                asir2:3
                smr1:2
            Creará los usuarios asir2-1, asir2-2, hasta asir2-3; y los usuarios smr1-1, smr1-2.
Fecha de creación: 30/01/2026
Fecha de última modificación: 30/01/2026
COMENTARIO

#!/bin/bash 
if [ $# -ne 1 ]; then
    echo "No se ha introducido el archivo de entrada."
    exit 1
fi

archivo="$1"

if [ ! -f "$archivo" ]; then
    echo "El archivo $archivo no existe."
fi

while IFS=: read -r grupo num_usuarios; do
    if [[ -z $grupo || -z $num_usuarios ]]; then
        echo "Línea no válida: '$grupo:$num_usuarios'"
        continue
    fi

    if !getent group "$grupo" > /dev/null; then
        groupadd "$grupo"
        echo "Se ha creado el grupo $grupo"
    fi

    for ((i=1; i<=num_usuarios; i++)); do
        usuario="${grupo}-${i}"

        if id "$usuario" &> /dev/null; then
            userdel -r "$usuario" 2>/dev/null
        fi

        useradd -m -g "$grupo" "$usuario"
        if [ "$?" -eq 0 ]; then 
            echo "Se ha creado el usuario: $usuario"
        fi
    done
done < "$archivo"