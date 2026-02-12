/**
 * Unidad: 3
 * Actividad: 9.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite 
 * por teclado los tres ángulos de un triángulo y si la suma de los mismos no es 180 
 * muestre por pantalla el mensaje: Error en la entrada.
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio09 {
	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int angulo1, angulo2, angulo3;

		System.out.print("IIntroduzca primer angulo del triangulo: ");
		angulo1 = teclado.nextInt();
		System.out.print("Introduzca segundo angulo del triangulo: ");
		angulo2 = teclado.nextInt();
		System.out.print("Introduzca tercer angulo del triangulo: ");
		angulo3 = teclado.nextInt();

		if ((angulo1 + angulo2 + angulo3) != 180) {
			System.out.print("Error en la entrada");
		}

		teclado.close();
	}
}