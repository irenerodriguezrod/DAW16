<<COMENTARIO
Actividad: 04
Descripción: Realice un script que muestre el nombre de cada uno de los ficheros pasados por parámetro y el tipo de fichero que es.
Autor: Irene RODRIGUEZ RODRIGUEZ
Fecha de creación: 30/01/2026
Fecha de última modificación: 30/01/2026
COMENTARIO

#!/bin/bash
clear

if [ $# -eq 0 ]; then
    echo "Error. No se han pasado parámetros."
    exit 1
else 
    for archivo in $*
    do
        echo "Nombre: $archivo"
        file $archivo
    done
fi