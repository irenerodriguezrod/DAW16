/**
 * Unidad: 3
 * Actividad: 3.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado dos números y si son iguales 
 * muestre por pantalla el mensaje: Los números introducidos son iguales
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio03 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int n1, n2;

		System.out.print("Introduzca el primer número: ");
		n1 = teclado.nextInt();
		System.out.print("Introduzca el segundo número: ");
		n2 = teclado.nextInt();

		if (n1 == n2) {
			System.out.print("Los números introducidos son iguales");
		}

		teclado.close();
	}
}