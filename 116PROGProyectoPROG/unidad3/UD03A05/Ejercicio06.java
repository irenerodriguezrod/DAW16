/**
 * Unidad: 3
 * Actividad: 6
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que 
 * solicite por teclado un número entero positivo y muestre por pantalla los números impares 
 * comprendidos entre 1 y el número introducido.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */


import java.util.Scanner;

public class Ejercicio06 {
	public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		
		int n;
		
		System.out.print("Introduzca un número entero positivo: ");
		n=teclado.nextInt();
		
		while (n<=0) {
			System.out.print("Error en la entrada");
			
			System.out.print("Introduzca un número entero positivo: ");
			n=teclado.nextInt();
			
		}
		
		for (int i=1;i<=10;i=+2){
			System.out.print("Los números impares comprendidos entre 1 y "+n+" son: "+i);
		}

		teclado.close();
	}
}