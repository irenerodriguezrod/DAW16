/**
 * @file Ejercicio10.java
 * @description Realiza la codificación en lenguaje de programación Java de un
 *              algoritmo que declare
 *              dos variables de tipo real, inicializadas a un valor cualquiera
 *              cada una de ellas y
 *              muestre por pantalla el menor de los valores.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

public class Ejercicio10 {
    public static void main(String[] args) {
        double n1 = 2.5;
        double n2 = 5.5;
        System.out.printf("Los valores son: n1 = %f, n2 = %f%n", n1, n2);
        if (n1 > n2) {
            System.out.printf("El menor valor es: %f%n", n2);
        } else {
            System.out.printf("El menor valor es: %f%n", n1);
        }
    }
}
