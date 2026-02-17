/**
 * Unidad: 3
 * Actividad: 2.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado un 
 * número y si es negativo lo cambie de signo. Para finalizar mostrará el número por pantalla.
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio02 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int numero;

		System.out.print("Introduzca un numero: ");
		numero = teclado.nextInt();

		if (numero < 0) {

			numero = -numero;

			System.out.print(-numero);
		}
		teclado.close();
	}
}