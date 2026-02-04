<<COMENTARIO
Actividad: 01
Descripción: Diseñar un shell script para bash que ofrezca en la salida estándar el siguiente menú:
                1] Listar archivos
                2] Ver directorio de trabajo
                3] Crear directorio
                4] Borrar directorio
                5] Crear usuario
                6] Borrar usuario
                7] Salir
            Introducir opción:
            Si se solicita la opción:
                1. Se listan los archivos del directorio actual.
                2. Se muestra el nombre del directorio actual.
                3. Se solicita un nombre de directorio y se crea dentro del directorio actual.
                4. Se solicita un nombre de directorio y se borra, suponiendo que está vacío y ubicado en el directorio actual.
                5. Se comprueba si el script lo está ejecutando el root, y si lo es, se solicita un login de usuario y se añade al sistema, creando en ese momento su directorio personal, que estará ubicado en /home y llevará por nombre el del propio login de usuario. Si no se es root, se mostrará una advertencia.
                6. Se comprueba si el script lo está ejecutando el root, y si lo es, se solicita un login de usuario y se borra del sistema, eliminando también su directorio personal. Si no se es root, se mostrará una advertencia.
                7. Se finaliza la ejecución, mostrando el mensaje Fin de ejecución.
            Si se introduce una opción no válida se indicará esta circunstancia en la salida estándar.
            Tras ejecutar cualquiera de las opciones válidas, salvo en el caso de la 7, se imprimirá de nuevo el menú, en espera de recibir otra solicitud.
            Diseñar el script empleando funciones para cada una de las opciones 1 a 6.
Fecha de creación: 30/01/2026
Fecha de última modificación: 30/01/2026
COMENTARIO

#!/bin/bash 
listar(){
    ls
}

trabajo(){
    pwd
}

crearD(){
    echo "Dime el directorio a crear: "
    read directorio
    mkdir $directorio
}

borrarD (){
    echo "Dime el directorio a borrar: "
    read directorio
    rmdir $directorio
}

crearU(){
    if [ $(whoami) = "root" ]; then
        read -p "Dime el usuario a crear: " user
        useradd -m $user
    else 
        echo "No eres root. No tienes permisos."
    fi
}

borrarU(){
    if [ $UID = 0 ]; then
        read -p "Dime el usuario a borrar: " user
        userdel -r $user
    else
        echo "No eres root. No tienes permisos."
    fi
}

menu(){
    echo -e "\n -- MENU --"
    echo "1) Listar archivos"
    echo "2) Ver directorios de trabajo"
    echo "3) Crear directorio"
    echo "4) Borrar directorio"
    echo "5) Crear usuario"
    echo "6) Borrar usuario"
    echo "0) Salir"

    read -p "Introduce un número: " opcion
    echo -e "\n"
}

while [ true ]; do
    menu
    case $opcion in
        1) listar ;;
        2) trabajo ;;
        3) crearD ;;
        4) borrarD ;;
        5) crearU ;;
        6) borrarU ;;
        7) echo "Saliendo del programa."
            exit 0 ;;
        *) echo "Opción no válida. Inténtelo de nuevo."
    esac
done