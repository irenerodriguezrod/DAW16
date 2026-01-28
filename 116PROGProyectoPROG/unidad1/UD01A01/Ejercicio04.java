/**
 * @file Ejercicio04.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de un
 *              algoritmo que declare la constante PI, asignándole el valor
 *              3.14159. A continuación
 *              mostrará por pantalla el área de un círculo de radio 5. Área = π
 *              * radio2
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

public class Ejercicio04 {
    public static void main(String[] args) {
        //PI esta definido con Math.PI, pero en esta ocasión nos dicen que la declaremos con un determinado valor
        final double PI = 3.14159;
        int radio = 5;
        double area = PI * Math.pow(radio, 2);
        System.out.printf("El área de un círculo de radio %d es: %f", radio, area);
    }
}
