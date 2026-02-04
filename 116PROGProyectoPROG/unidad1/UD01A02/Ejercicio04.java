
/**
 * @file Ejercicio04.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un
 *              algoritmo que solicite por teclado tres calificaciones (números enteros) de un alumno y
 *              muestre por pantalla la media de las mismas.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

import java.util.Scanner;

public class Ejercicio04 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce un número entero: ");
        int n1 = scanner.nextInt();
        System.out.print("Introduce un número entero: ");
        int n2 = scanner.nextInt();
        System.out.print("Introduce un número entero: ");
        int n3 = scanner.nextInt();

        double media = (n1+n2+n3)/3;
        System.out.printf("La media de %d, %d y %d es %.2f", n1, n2, n3, media);
        scanner.close();
    }
}
