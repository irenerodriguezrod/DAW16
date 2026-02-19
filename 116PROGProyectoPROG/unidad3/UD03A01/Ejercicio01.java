/**
 * Unidad: 3
 * Actividad: 1.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado 
 * la edad de una persona y si es mayor de edad muestre por pantalla el mensaje: Eres mayor de edad
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio01 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int edad;

        System.out.print("Introduzca su edad: ");
        edad = teclado.nextInt();

        if (edad >= 18) {
            System.out.println("Eres mayor de edad.");
        } else {
            System.out.println("Eres menor de edad.");
        }

        teclado.close();
    }
}