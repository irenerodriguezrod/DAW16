import java.util.Scanner;

/**
 * @file Ejercicio08.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que solicite por teclado un número de segundos y los
 *              convierta a horas,
 *              minutos y segundos y los muestre por pantalla
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 29/01/2026
 */

public class Ejercicio08 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduczca un número de segundos: ");
        int segundos = scanner.nextInt();

        int horas = segundos / 3600;
        int minutos = (segundos % 3600) / 60;
        int segundosRestantes = segundos % 60;

        System.out.printf("Horas: %d, Minutos: %d, Segundos: %d", horas, minutos, segundosRestantes);
        scanner.close();
    }
}
