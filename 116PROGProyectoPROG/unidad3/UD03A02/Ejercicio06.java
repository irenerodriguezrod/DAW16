/**
 * Unidad: 3
 * Actividad: 6.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado las horas, los minutos y los
 * segundos de una hora y muestre por pantalla un mensaje indicando si se
 * trata de una hora correcta o incorrecta.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio06 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int hora, min, seg;

        System.out.print("Introduzca una hora (0-23): ");
        hora = teclado.nextInt();
        System.out.print("Introduzca los minutos (0-59): ");
        min = teclado.nextInt();
        System.out.print("Introduzca los segundos (0-59): ");
        seg = teclado.nextInt();

        if (hora >= 0 && hora <= 23 && min >= 0 && min <= 59 && seg >= 0 && seg <= 59) {
            System.out.println("La hora introducida es correcta.");
        } else {
            System.out.println("La hora introducida es incorrecta.");
        }

        teclado.close();
    }
}