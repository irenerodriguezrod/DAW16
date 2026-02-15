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
		String salida;

		System.out.print("Introduzca calificacion(1-10): ");
		nota = teclado.nextInt();

		if (nota <= 1 && nota >= 10) {
			nota = switch (nota) { // se emplea el switch como expresion para que devuelva un valor
				case 0, 1, 2, 3, 4 -> salida = ("Suspenso");
				case 5, 6 -> salida = ("Aprobado");
				case 7, 8 -> salida = ("Notable");
				default -> salida = ("Sobresaliente"); // la equivalencia de -> es el break en la anterior version de
														// Java
			};
			System.out.printf(salida);
		}

		teclado.close();
	}
}