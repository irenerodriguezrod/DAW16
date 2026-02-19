/**
 * Unidad: 3
 * Actividad: 5.
 * Descripción:  Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un
 * algoritmo que solicite números enteros por teclado hasta que la suma de los números
 * introducidos sea igual o mayor que 100. Antes de finalizar mostrará por pantalla el
 * valor de la suma, la media y cuántos números positivos, negativos y nulos se han introducido.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        int n, contadorTotal = 0, acumulador = 0;
        int contadorPositivo = 0, contadorNegativo = 0, contadorNulo = 0;
        double media;

        do {
            System.out.print("Introduzca un número: ");
            n = teclado.nextInt();

            acumulador += n;
            contadorTotal++;

            if (n > 0) {
                contadorPositivo++;
            } else if (n < 0) {
                contadorNegativo++;
            } else {
                contadorNulo++;
            }

        } while (acumulador < 100); // menor que 100, así termina al llegar o superar 100

        media = (double) acumulador / contadorTotal;

        System.out.println("\nValor de la suma total: " + acumulador);
        System.out.println("Valor de la media total: " + media);
        System.out.println("Número de positivos: " + contadorPositivo);
        System.out.println("Número de negativos: " + contadorNegativo);
        System.out.println("Número de nulos: " + contadorNulo);

        teclado.close();
    }
}