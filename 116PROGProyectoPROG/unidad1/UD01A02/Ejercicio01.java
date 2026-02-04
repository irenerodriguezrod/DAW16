/**
 * @file Ejercicio01.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que solicite por teclado un nombre y muestre por
 *              pantalla el siguiente
 *              mensaje: Hola nombre.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

import java.util.Scanner;

public class Ejercicio01 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce tu nombre: ");
        String nombre = scanner.nextLine();
        
        System.out.printf("Hola %s", nombre);
        scanner.close();
    }
}
