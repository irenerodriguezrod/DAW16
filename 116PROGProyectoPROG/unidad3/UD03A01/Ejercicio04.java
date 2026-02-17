/**
 * Unidad: 3
 * Actividad: 4.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado dos números y si ambos son positivos muestre por pantalla la media de los mismos.
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 13 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio04 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int n1, n2;
		
		System.out.print("Introduzca el primer número: ");
		n1=teclado.nextInt();
		System.out.print("Introduzca el segundo número: ");
		n2=teclado.nextInt();
		
		if (n1>0 && n2>0) {
			System.out.print((n1+n2)/2.0); //se puede declarar como double o como float para que de decimales
		}

		teclado.close();
	}
}
