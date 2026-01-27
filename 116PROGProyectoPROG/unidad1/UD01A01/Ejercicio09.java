/**
 * @file Ejercicio09.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que declare dos variables de tipo entero,
 *              inicializadas a un valor cualquiera
 *              cada una de ellas, muestre por pantalla el contenido de las
 *              variables, intercambie el
 *              valor de las mismas y muestre por pantalla el contenido de las
 *              variables después del
 *              intercambio de valores.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

public class Ejercicio09 {
    public static void main(String[] args) {
        int n1 = 10;
        int n2 = 5;
        System.out.printf("Antes del intercambio: n1 = %d, n2 = %d%n", n1, n2);
        int temp = n1;
        n1 = n2;
        n2 = temp;
        System.out.printf("Después del intercambio: n1 = %d, n2 = %d%n", n1, n2);
    }
}
