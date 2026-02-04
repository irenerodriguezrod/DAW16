
/**
 * @file Ejercicio03.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que solicite por teclado dos números enteros y muestre
 *              por pantalla el
 *              cociente y el resto de ambos números.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

import java.util.Scanner;

public class Ejercicio03 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce el primer número: ");
        int num1 = scanner.nextInt();
        System.out.print("Introduce el segundo número: ");
        int num2 = scanner.nextInt();

        int cociente = num1 / num2;
        int resto = num1 % num2;

        System.out.printf("El cociente de %d entre %d es %d y el resto es %d", num1, num2, cociente, resto);

        scanner.close();
    }
}