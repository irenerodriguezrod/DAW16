<<COMENTARIO
Actividad: 01
Descripción: Realice un script que copie todos los ficheros que se le pasen por parámetro, al directorio misDatos. Si el directorio misDatos no existe, se deberá crear.
Autor: Irene RODRIGUEZ RODRIGUEZ
Fecha de creación: 30/01/2026
Fecha de última modificación: 30/01/2026
COMENTARIO

#!/bin/bash 
clear
#si no existe el directorio lo creamos
if [ ! -d misDatos] then 
    mkdir misDatos
fi

#copiar los ficheros, por cada fichero en lista lo copia
for fichero in $* do
    if [ -f $fichero ] then 
        cp $fichero misDatos/
    else 
        echo "No es un fichero: $fichero"
    fi
done