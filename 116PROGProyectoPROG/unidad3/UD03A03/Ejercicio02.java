/**
 * Unidad: 3
 * Actividad: 2.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado los tres ángulos de un
 * triángulo y si la suma de los mismos es 180 muestre por pantalla si se
 * trata de un triángulo rectángulo, obtusángulo o acutángulo. Un triángulo
 * es rectángulo si el valor de uno de sus ángulos es 90, es obtusángulo si el
 * valor de uno de sus ángulos es mayor de 90 y es acutángulo si el valor de
 * cada uno de sus tres ángulos es menor de 90.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio02 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int a, b, c;

		System.out.print("Introduzca el primer ángulo del triángulo: ");
		a = teclado.nextInt();
		System.out.print("Introduzca el segundo ángulo del triángulo: ");
		b = teclado.nextInt();
		System.out.print("Introduzca el tercer ángulo del triángulo: ");
		c = teclado.nextInt();

		if (a + b + c != 180) {
			System.out.println("Error: la suma de los ángulos no es 180. No es un triángulo válido.");
		} else if (a == 90 || b == 90 || c == 90) {
			System.out.println("Es un triángulo rectángulo.");
		} else if (a > 90 || b > 90 || c > 90) {
			System.out.println("Es un triángulo obtusángulo.");
		} else { // todos menores de 90
			System.out.println("Es un triángulo acutángulo.");
		}

		teclado.close();
	}
}