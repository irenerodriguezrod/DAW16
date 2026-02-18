/**
 * Unidad: 3
 * Actividad: 6.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java 
 * de un algoritmo que solicite por teclado un número de filas (entero comprendido entre 2 y 9) y muestre por 
 * pantalla una figura similar a la siguiente (filas=5).
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio06 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        int filas;
		
		System.out.print("Introduzca numero filas(2-10): ");
		filas=teclado.nextInt();
		
		while(filas<2 ||filas>10) {
		System.out.print("ERROR EN LA ENTRADA");
		
		System.out.print("Introduzca numero filas(2-10): ");
		filas=teclado.nextInt();
		}
		
		for(int i=1;i<=filas;i++) {
			for(int j=1;j<=i;j++) {
				System.out.print(j);
			}
			System.out.println("");

		}

		teclado.close();
	}
}