/**
 * Unidad: 3
 * Actividad: 4.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación 
 * Java de un algoritmo que solicite por teclado tres números enteros 
 * positivos y muestre por pantalla un mensaje indicando si forman una 
 * progresión aritmética. En una progresión aritmética la diferencia entre dos 
 * términos consecutivos siempre es la misma.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio04 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int numero1, numero2, numero3;

        // Solicitar tres números positivos
        do {
            System.out.print("Introduzca el primer número entero positivo: ");
            numero1 = teclado.nextInt();
        } while (numero1 <= 0);

        do {
            System.out.print("Introduzca el segundo número entero positivo: ");
            numero2 = teclado.nextInt();
        } while (numero2 <= 0);

        do {
            System.out.print("Introduzca el tercer número entero positivo: ");
            numero3 = teclado.nextInt();
        } while (numero3 <= 0);

        // Comprobar progresión aritmética
        if ((numero2 - numero1) == (numero3 - numero2)) {
            System.out.println("Los números forman una progresión aritmética.");
        } else {
            System.out.println("Los números no forman una progresión aritmética.");
        }

        teclado.close();
    }
}