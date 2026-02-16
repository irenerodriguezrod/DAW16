/**
 * Unidad: 3
 * Actividad: 1.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un
 * algoritmo que solicite por teclado números enteros hasta que se introduzca uno no
 * positivo y por cada uno de los números introducidos muestre por pantalla uno de los
 * siguientes mensajes: PAR IMPAR
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio01 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int n;

		System.out.print("Introduzca un número: ");
		n = teclado.nextInt();

		while (n > 0) {

			if (n % 2 == 0) {
				System.out.println("Par");
			} else {
				System.out.println("Impar");
			}

			System.out.print("Introduzca un número: ");
			n = teclado.nextInt();
		}
		teclado.close();
	}
}