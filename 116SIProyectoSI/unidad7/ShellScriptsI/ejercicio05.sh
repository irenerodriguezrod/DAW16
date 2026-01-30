<<COMENTARIO
Actividad: 05
Descripción: Realice un script que imprima el siguiente menú:
            1 - Sumar
            2- Restar
            3 - Dividir
            4 - Multiplicar
            0 – Salir
        •	Después de mostrar el menú, se pedirá que se elija una opción. Si la opción elegida no está entre el 1 y el 4, se mostrará un mensaje de error. En caso de que la opción sea válida, se pedirán dos números por teclado y en función de la operación elegida, se devolverá el resultado por pantalla.
        •	Cada operación será implementada haciendo uso de funciones.
        •	Si la opción elegida no es válida, se volverá a mostrar el menú.
        •	El programa terminará, cuando se pulse 0.

Autor: Irene RODRIGUEZ RODRIGUEZ
Fecha de creación: 30/01/2026
Fecha de última modificación: 30/01/2026
COMENTARIO

#!/bin/bash
clear

sumar(){
    echo "Resultado $(($1 + $2))"
}

restar(){
    echo "Resultado $(($1 - $2))"
}

dividir(){
    if [ $2 -eq 0 ]; then
        echo "Error. No se puede dividir por 0"
    else
        echo "Resultado $(($1 / $2))"
    fi
}

multiplicar(){
    echo "Resultado $(($1 * $2))"
}

while true do
    echo -e "\n -- MENÚ --"
    echo "1 - Sumar"
    echo "2 - Restar"
    echo "3 - Dividir"
    echo "4 - Multiplicar"
    echo "0 - Salir"

    read -p "Elija una opcion: " opcion

    case $opcion in
        1|2|3|4)
            read -p "Introduzca el primer número: " n1
            read -p "Introduzca el segundo número: " n2

            case $opcion in
                1) sumar $n1 $n2 ;;
                2) restar $n1 $n2 ;;
                3) dividir $n1 $n2 ;;
                4) multiplicar $n1 $n2 ;;
            esac ;;

        0) 
            echo "Saliendo del programa"
            break ;;
        *) 
            echo "Opción inválida. Inténtelo de nuevo." ;;
    esac
done