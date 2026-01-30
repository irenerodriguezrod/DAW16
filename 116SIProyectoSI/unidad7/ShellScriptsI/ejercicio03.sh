<<COMENTARIO
Actividad: 03
Descripción: Realice un script que cree un fichero de nombre Copia.tar.gz, donde se almacenen comprimidos todos los ficheros que se pasen por parámetro. En caso de no pasar ningún parámetro se mostrará un mensaje de error
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
    tar -czf Copia.tar.gz $*
    echo "Copia completada."
fi