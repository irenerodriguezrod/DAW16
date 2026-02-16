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
		int n, contadorTotal, acumulador, contadorPositivo, contadorNegativo, contadorNulo;
		double media;

		contadorTotal = 1;
		acumulador = 0;
		contadorPositivo = 0;
		contadorNegativo = 0;
		contadorNulo = 0;

		do {
			System.out.print("Introduzca un número: ");
			n = teclado.nextInt();
			if (n > 0) {
				contadorPositivo++;
			} else {
				if (n < 0) {
					contadorNegativo++;
				} else {
					contadorNulo++;
				}
			}

		} while (acumulador <= 100);

		media = acumulador / contadorTotal;

		System.out.print("El valor de la suma total es " + acumulador);
		System.out.print("El valor de la media total es " + media);
		System.out.print("El número total de positivos introducidos es " + contadorPositivo
				+ ", el número total de negativos es " + contadorNegativo + " y el numero total de nulos es "
				+ contadorNulo);

		teclado.close();
	}
}