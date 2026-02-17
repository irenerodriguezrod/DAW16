/**
 * Unidad: 3
 * Actividad: 7.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo 
 * que solicite por teclado un entero positivo y si no está comprendido entre 1 y 12 muestre por pantalla el mensaje: Error en la entrada 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int numeroEntero;
		
		System.out.print("Introduzca numero entero (1-12): ");
		numeroEntero=teclado.nextInt();
		
		if (numeroEntero<1 || numeroEntero>12) {
			System.out.print("Error en la entrada"); 
		}

		teclado.close();
	}
}