/**
 * Unidad: 3
 * Actividad: 3.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado los coeficientes de una
 * ecuación de primer grado ( ax+b=0 ) y muestre por pantalla uno de los
 * siguientes mensajes:
 *		LA ECUACIÓN TIENE INFINITAS SOLUCIONES a=0 y b=0
 *		LA ECUACIÓN NO TIENE SOLUCIÓN a=0
 *		LA ECUACIÓN TIENE UNA SOLUCIÓN Y ES  x=-b/a
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio03 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int a, b;

        System.out.print("Introduzca un coeficiente A: ");
        a = teclado.nextInt();
        System.out.print("Introduzca otro coeficiente B: ");
        b = teclado.nextInt();

        String salida;

        if (a == 0 && b == 0) {
            salida = "La ecuación tiene infinitas soluciones.";
        } else if (a == 0) {
            salida = "La ecuación no tiene solución.";
        } else {
            double x = - (double)b / a;
            salida = String.format("La ecuación tiene una solución y es x = %.2f", x);
        }

        System.out.println(salida);
        teclado.close();
    }
}