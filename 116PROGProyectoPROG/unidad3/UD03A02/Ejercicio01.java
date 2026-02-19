/**
 * Unidad: 3
 * Actividad: 1.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación 
 * Java de un algoritmo que solicite por teclado dos números y muestre por pantalla el mayor
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio01 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int numero1, numero2;

        System.out.print("Introduzca un número entero: ");
        numero1 = teclado.nextInt();
        System.out.print("Introduzca otro número entero: ");
        numero2 = teclado.nextInt();

        if (numero1 > numero2) {
            System.out.println("El número mayor es: " + numero1);
        } else if (numero2 > numero1) {
            System.out.println("El número mayor es: " + numero2);
        } else {
            System.out.println("Ambos números son iguales: " + numero1);
        }

        teclado.close();
    }
}