/**
 * Unidad: 3
 * Actividad: 3.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado dos números enteros
 * positivos y muestre por pantalla uno de los siguientes mensajes 
 * dependiendo si la división del primer número entre el segundo es exacta o
 * no:
 *   si es exacta: División exacta. Cociente= 
 *   si no es exacta: División no exacta. Cociente= Resto=
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio03 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int numero1, numero2;

        // Solicitar números positivos
        do {
            System.out.print("Introduzca un número entero positivo: ");
            numero1 = teclado.nextInt();
        } while (numero1 <= 0);

        do {
            System.out.print("Introduzca otro número entero positivo: ");
            numero2 = teclado.nextInt();
        } while (numero2 <= 0);

        // Comprobar si la división es exacta
        if (numero1 % numero2 == 0) {
            System.out.println("División exacta. Cociente = " + (numero1 / numero2));
        } else {
            System.out.println("División no exacta. Cociente = " + (numero1 / numero2) + " Resto = " + (numero1 % numero2));
        }

        teclado.close();
    }
}