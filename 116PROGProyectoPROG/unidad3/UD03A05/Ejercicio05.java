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
		
		int n;
		
		System.out.print("Introduzca 10 números enteros: ");
		n=teclado.nextInt();
		
		if (n>0) {
		for(int i=1;i<=10;i++){ //i++ significa que va de uno en uno
			System.out.print("Introduzca un número entero: ");
			n=teclado.nextInt();
			
			if (n==5) {
				System.out.println("Se ha introducido el número 5.");
				}
				else {
					System.out.println("No se ha introducido el número 5.");
				}
			}
		}
		else {
			System.out.print("El numero introducido es incorrecto");
		}

		teclado.close();
	}
}