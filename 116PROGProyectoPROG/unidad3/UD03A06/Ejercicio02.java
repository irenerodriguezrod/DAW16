/**
 * Unidad: 3
 * Actividad: 2.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java 
 * de un algoritmo que muestre por pantalla un contador con 3 dígitos (X-X-X). Mostrará los números del 0-0-0 al 9-9-9.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio02 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		
		int i;
		int j;
		int k;
		
		for(i=0;i<=9;i++) { // for(int i=0;i<=9;i++) {
			for(j=0;j<=9;j++) {
				for(k=0;k<=9;k++) {
				System.out.printf("%d - %d - %d\n",i,j,k);
				}
			}
		}

		teclado.close();
	}
}