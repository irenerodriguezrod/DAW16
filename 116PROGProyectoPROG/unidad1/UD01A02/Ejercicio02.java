/**
 * @file Ejercicio02.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de programación Java 
 *              de un algoritmo que solicite por teclado un número entero n y muestre 
 *              por pantalla la suma de todos los números enteros comprendidos entre 1 y n.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

import java.util.Scanner;

public class Ejercicio02 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce un numero: ");
        int n = scanner.nextInt();
        int suma = 0;
        for (int i = 1; i <= n; i++) {
            suma += i;
        }
        System.out.printf("La suma de todos los enteros comprendidos entre 1 y %d es %d", n, suma);

        scanner.close();
    }
}
