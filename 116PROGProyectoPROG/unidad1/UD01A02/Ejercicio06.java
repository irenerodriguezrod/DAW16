import java.util.Scanner;

/**
 * @file Ejercicio06.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un algoritmo que solicite por teclado
 *              la temperatura en grados Celsius y muestre por pantalla
 *              el equivalente en grados Fahrenheit.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 29/01/2026
 */

public class Ejercicio06 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce la temperatura en grados Celsius: ");
        double gradosCelsius = scanner.nextDouble();

        double gradosFahrenheit = (gradosCelsius * 9.0 / 5.0) + 32;

        System.out.printf("La temperatura en grados Fahrenheit es: %.2f%n",
                          gradosFahrenheit);

        scanner.close();
    }
}