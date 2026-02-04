import java.util.Scanner;

/**
 * @file Ejercicio05.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que solicite por teclado el radio de una esfera y
 *              muestre por pantalla el
 *              volumen de la misma
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 29/01/2026
 */

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce el radio: ");
        double radio = scanner.nextInt();

        double volumen = (4 * Math.PI * Math.pow(radio, 3)) / 3;
        System.out.printf("El volumen de una esfera de radio %.2f es %.2f", radio, volumen);
        scanner.close();
    }
}
