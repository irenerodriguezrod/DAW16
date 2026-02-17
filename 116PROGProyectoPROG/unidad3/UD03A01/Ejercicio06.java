/**
 * Unidad: 3
 * Actividad: 6.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo 
 * que solicite por teclado una calificación (número entero) y si está comprendido entre 0 y 10 muestre por pantalla el mensaje:  Calificación correcta 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio06 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int nota;

		System.out.print("Introduzca el primer número: ");
		nota = teclado.nextInt();

		if (nota >= 0 && nota <= 10) {
			System.out.print("Calificacion correcta");
		}

		teclado.close();
	}
}