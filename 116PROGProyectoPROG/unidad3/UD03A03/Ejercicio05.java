/**
 * Unidad: 3
 * Actividad: 5.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado
 * el día, el mes y el año de una fecha y muestre por pantalla un mensaje indicando si la fecha es correcta o incorrecta.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int anyo, mes, dia;

        System.out.print("Introduzca un año: ");
        anyo = teclado.nextInt();
        System.out.print("Introduzca un mes: ");
        mes = teclado.nextInt();
        System.out.print("Introduzca un día: ");
        dia = teclado.nextInt();

        if (esFechaValida(dia, mes, anyo)) {
            System.out.println("Fecha correcta");
        } else {
            System.out.println("Fecha incorrecta");
        }

        teclado.close();
    }

    private static boolean esFechaValida(int dia, int mes, int anyo) {
        if (anyo <= 1586 || mes < 1 || mes > 12 || dia < 1) {
            return false;
        }
        int diasMaximos = getDiasMes(mes, anyo);
        return dia <= diasMaximos;
    }

    private static int getDiasMes(int mes, int anyo) {
        return switch (mes) {
            case 1, 3, 5, 7, 8, 10, 12 -> 31;
            case 4, 6, 9, 11 -> 30;
            case 2 -> (esBisiesto(anyo) ? 29 : 28);
            default -> 0;
        };
    }

    private static boolean esBisiesto(int anyo) {
        // Un año es bisiesto si es divisible por 4, pero no por 100, salvo que sea divisible por 400
        return (anyo % 4 == 0 && anyo % 100 != 0) || (anyo % 400 == 0);
    }
}