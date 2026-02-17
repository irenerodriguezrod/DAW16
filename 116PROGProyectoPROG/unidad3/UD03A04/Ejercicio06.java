/**
 * Unidad: 3
 * Actividad: 6.
 * Descripción:  Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un
 * algoritmo que solicite por teclado un número entero positivo y muestre por pantalla si
 * se trata o no de un número hyperpar. Se dice que un número es hyperpar cuando todos sus dígitos son pares.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio06 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.print("Ingrese un número entero positivo: ");
        int numero = teclado.nextInt();

        if (esHyperpar(numero)) {
            System.out.println(numero + " es un número hyperpar.");
        } else {
            System.out.println(numero + " no es un número hyperpar.");
        }
        teclado.close();
    }

    public static boolean esHyperpar(int numero) {
        while (numero > 0) {
            int digito = numero % 10;
            if (digito % 2 != 0) {
                return false;
            }
            numero /= 10;
        }
        return true;
    }
}
