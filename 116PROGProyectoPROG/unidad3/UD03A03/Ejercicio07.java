/**
 * Unidad: 3
 * Actividad: 7.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado una calificación (entero entre 0 y 10) 
 * y muestre por pantalla uno de los siguientes mensajes: SUSPENSO(0-4), APROBADO(5-6),  NOTABLE(7-8), SOBRESALIENTE (9,10).
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int nota;

        System.out.print("Introduzca calificación (0-10): ");
        nota = teclado.nextInt();

        if (nota < 0 || nota > 10) {
            System.out.println("Error: calificación inválida");
        } else {
            // switch como expresión para asignar directamente a 'salida'
            String salida = switch (nota) {
                case 0, 1, 2, 3, 4 -> "Suspenso";
                case 5, 6 -> "Aprobado";
                case 7, 8 -> "Notable";
                case 9, 10 -> "Sobresaliente";
                default -> "Desconocido"; // nunca se usará, solo por seguridad
            };

            System.out.println("Resultado: " + salida);
        }

        teclado.close();
    }
}