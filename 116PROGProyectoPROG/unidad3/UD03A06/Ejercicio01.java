/**
 * Unidad: 3
 * Actividad: 1.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java 
 * de un algoritmo que muestre por pantalla las tablas de multiplicar desde el 1 hasta el 5.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio01 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		
		int n;
		int i;
		
		for(n=1;n<=5;n++) {
			for(i=1;i<=10;i++) {
				System.out.printf("%d * %d = %d\n",n,i,n*i);
			}
		}

		teclado.close();
	}
}