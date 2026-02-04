<<COMENTARIO
Actividad: 02
Descripción: Realice un script que muestre el nombre de cada uno de los ficheros pasados por parámetro y visualice su contenido por pantalla. En caso de no pasar ningún parámetro se mostrará un mensaje de error.
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
    for fichero in $* 
    do
        if [ -f $fichero ]; then 
            echo $fichero
            cat $fichero
        fi
    done
fi