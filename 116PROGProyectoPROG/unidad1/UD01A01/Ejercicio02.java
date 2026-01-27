/**
 * @file Ejercicio02.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que muestre por pantalla el resultado de las
 *              siguientes expresiones: 5 + 2,
 *              5 – 2, 5 * 2 y 5 / 2.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 27/01/2026
 */

public class Ejercicio02 {
    public static void main(String[] args) {
        int a = 5;
        int b = 2;
        int suma = a + b;
        int resta = a - b;
        float multiplicacion = a * b;
        double division = a / b;

        System.out.printf("Los números %d y %d, dan como resultado la suma: %d, la resta: %d, la multiplicación: %.1f y la división: %.1f", a, b, suma, resta, multiplicacion, division);
    }
}
