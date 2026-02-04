import java.util.Scanner;

/**
 * @file Ejercicio07.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que solicite el peso (kg) y la altura (m) de una
 *              persona y muestre el índice de
 *              masa corporal. IMC= peso / altura2.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 29/01/2026
 */

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduczca su peso en kilogramos(kg): ");
        double peso = scanner.nextInt();

        System.out.print("Introduzca su altura en metros(m): ");
        double altura = scanner.nextInt();

        double IMC = peso / (altura * altura);
        System.out.printf("El IMC es: %.2f", IMC);
        scanner.close();
    }
}
