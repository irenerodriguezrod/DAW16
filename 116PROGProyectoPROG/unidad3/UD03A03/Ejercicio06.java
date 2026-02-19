/**
 * Unidad: 3
 * Actividad: 6.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado
 * un mes (entero entre 1 y 12) y muestre por pantalla el nombre del mismo.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio06 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int mes;

        System.out.print("Introduzca un número de mes: ");
        mes = teclado.nextInt();

        if (mes < 1 || mes > 12) {
            System.out.println("Error, el número introducido es incorrecto.");
        } else {
            // Usando switch como expresión para asignar directamente a 'salida'
            String salida = switch (mes) {
                case 1 -> "Enero";
                case 2 -> "Febrero";
                case 3 -> "Marzo";
                case 4 -> "Abril";
                case 5 -> "Mayo";
                case 6 -> "Junio";
                case 7 -> "Julio";
                case 8 -> "Agosto";
                case 9 -> "Septiembre";
                case 10 -> "Octubre";
                case 11 -> "Noviembre";
                case 12 -> "Diciembre";
                default -> "Desconocido"; // nunca se usará porque ya se validó el rango
            };

            System.out.println("El mes es: " + salida);
        }

        teclado.close();
    }
}