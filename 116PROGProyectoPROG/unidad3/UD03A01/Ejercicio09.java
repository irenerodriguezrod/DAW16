/**
 * Unidad: 3
 * Actividad: 9.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite 
 * por teclado los tres ángulos de un triángulo y si la suma de los mismos no es 180 
 * muestre por pantalla el mensaje: Error en la entrada.
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio09 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int angulo1, angulo2, angulo3;

        System.out.print("Introduzca el primer ángulo del triángulo: ");
        angulo1 = teclado.nextInt();
        System.out.print("Introduzca el segundo ángulo del triángulo: ");
        angulo2 = teclado.nextInt();
        System.out.print("Introduzca el tercer ángulo del triángulo: ");
        angulo3 = teclado.nextInt();

        int suma = angulo1 + angulo2 + angulo3;

        if (suma != 180) {
            System.out.println("Error en la entrada");
        } else {
            System.out.println("La entrada es correcta. Forma un triángulo válido.");
        }

        teclado.close();
    }
}