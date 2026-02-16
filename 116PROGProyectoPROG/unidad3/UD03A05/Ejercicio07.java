/**
 * Unidad: 3
 * Actividad: 7
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado un número entero positivo 
 * y muestre por pantalla si se trata de un número perfecto o no. Se dice que un número es perfecto cuando la suma de 
 * sus divisores propios (todos excepto el propio número) es igual al número. Números perfectos: 6, 28, 496, 8128.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        int n;
        int contador = 0;

        System.out.print("Introduzca un número entero positivo: ");
        n = teclado.nextInt();

        while (n <= 0) {
            System.out.println("Error en la entrada");
            System.out.print("Introduzca un número entero positivo: ");
            n = teclado.nextInt();
        }

        // Sumar divisores propios
        for (int i = 1; i <= n / 2; i++) {
            if (n % i == 0) {
                contador += i;
            }
        }

        // Comprobar si es perfecto
        if (n == contador) {
            System.out.println("El número introducido es un número perfecto");
        } else {
            System.out.println("El número introducido no es un número perfecto");
        }

		teclado.close();
    }
}