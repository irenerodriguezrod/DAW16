/**
 * Unidad: 3
 * Actividad: 2.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación 
 * Java de un algoritmo que solicite por teclado dos números enteros
 * positivos y muestre por pantalla un mensaje indicando si el segundo es
 * divisor del primero o no.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio02 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int numero1, numero2;

		System.out.print("Introduzca un numero entero positivo: ");
		numero1 = teclado.nextInt();
		System.out.print("Introduzca otro numero entero positivo: ");
		numero2 = teclado.nextInt();

		if (numero1 > numero2) { // if (numero1%numero2==0)
			System.out.print(numero1 + " es divisor de " + numero2); // salida=String.format("El %d es divisor de
																		// %d\n"+numero1);
		} else {
			System.out.print(numero1 + " no es divisor de " + numero2);
		}

		teclado.close();
	}
}