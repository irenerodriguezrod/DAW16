/**
 * Unidad: 3
 * Actividad: 3.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java 
 * de un algoritmo que solicite por teclado cuatro números binarios y los muestre por pantalla en decimal.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio03 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		
		int numeroBinario, acumulador, peso, digito;
		
		for(int i=1;i<=4;i++) {
			System.out.print("Introduzca numero binario: ");
			numeroBinario=teclado.nextInt();
			acumulador=0;
			peso=1;
			while(numeroBinario!=0) {
				digito=numeroBinario%10;
				acumulador+=digito*peso;
				peso*=2;
				numeroBinario/=10;
			}
			System.out.println(acumulador);
		}

		teclado.close();
	}
}