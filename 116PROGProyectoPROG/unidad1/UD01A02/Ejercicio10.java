import java.util.Scanner;

/**
 * @file Ejercicio10.java
 * @descriptionRealiza el pseudocódigo y la codificación en lenguaje de
 *                     programación Java de un
 *                     algoritmo que solicite por teclado un entero de dos
 *                     dígitos y lo muestre por pantalla
 *                     con los dígitos invertidos. Ejemplo: entrada por teclado
 *                     12 - salida por pantalla 21
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 29/01/2026
 */

public class Ejercicio10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduczca un número de dos dígitos: ");
        int numero = scanner.nextInt();
        int digito1 = numero / 10;
        int digito2 = numero % 10;
        int invertido = digito2 * 10 + digito1;

        System.out.printf("El número invertido es: %d", invertido);
        scanner.close();
    }
}