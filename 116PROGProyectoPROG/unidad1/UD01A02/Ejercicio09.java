import java.util.Scanner;

/**
 * @file Ejercicio09.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de una
 *              algoritmo que solicite por teclado un número de bytes (B) y
 *              muestre por pantalla las
 *              cantidades equivalentes en bits y en kilobytes (kB).
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 29/01/2026
 */

public class Ejercicio09 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduczca un número de bytes(B): ");
        int bytes = scanner.nextInt();

        int bits = bytes * 8;
        double kilobytes = bytes / 1024.0;

        System.out.printf("Bits: %d, Kilobytes: %.2f", bits, kilobytes);
        scanner.close();
    }
}