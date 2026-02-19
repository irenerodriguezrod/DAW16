/**
 * Unidad: 3
 * Actividad: 5.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación 
 * Java de un algoritmo que solicite por teclado tres números enteros
 * positivos y muestre por pantalla un mensaje indicando si el tercer número
 * está más cerca del primero o del segundo
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int numero1, numero2, numero3;
        int diferencia1, diferencia2;

        System.out.print("Introduzca el primer número entero: ");
        numero1 = teclado.nextInt();
        System.out.print("Introduzca el segundo número entero: ");
        numero2 = teclado.nextInt();
        System.out.print("Introduzca el tercer número entero: ");
        numero3 = teclado.nextInt();

        diferencia1 = Math.abs(numero3 - numero1);
        diferencia2 = Math.abs(numero3 - numero2);

        if (diferencia1 < diferencia2) {
            System.out.println("El número " + numero3 + " está más cerca de: " + numero1);
        } else if (diferencia2 < diferencia1) {
            System.out.println("El número " + numero3 + " está más cerca de: " + numero2);
        } else {
            System.out.println("El número " + numero3 + " está a la misma distancia de " + numero1 + " y " + numero2);
        }

        teclado.close();
    }
}