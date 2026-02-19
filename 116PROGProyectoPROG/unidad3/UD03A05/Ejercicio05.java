/**
 * Unidad: 3
 * Actividad: 5
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite 
 * por teclado diez números enteros y muestre por pantalla si se ha introducido el número 5 o no.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio05 {
	public static void main(String[] args) {

		Scanner teclado = new Scanner(System.in);

		int numero;
		boolean encontrado = false; // variable bandera

		for (int i = 1; i <= 10; i++) {
			System.out.print("Introduzca un número entero: ");
			numero = teclado.nextInt();

			if (numero == 5) {
				encontrado = true;
			}
		}

		if (encontrado) {
			System.out.println("Se ha introducido el número 5.");
		} else {
			System.out.println("No se ha introducido el número 5.");
		}

		teclado.close();
	}
}