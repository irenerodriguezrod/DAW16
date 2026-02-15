/**
 * Unidad: 3
 * Actividad: 1.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado tres números y muestre por
 * pantalla un mensaje indicando si los tres números son iguales, si los tres
 * son distintos o si hay dos iguales.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio01 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int n1, n2, n3;
		
		System.out.print("Introduzca el primer número: ");
		n1=teclado.nextInt();
		System.out.print("Introduzca el segundo número: ");
		n2=teclado.nextInt();
		System.out.print("Introduzca el tercer número: ");
		n3=teclado.nextInt();
		
		if (n1==n2 && n2==n3 && n1==n3) {
			System.out.print("Los tres números son iguales.");
		}
		else { //else if (n1!=n2 && n2!=n3 && n1!=n3) {
			if (n1!=n2 && n2!=n3 && n1!=n3) {
			System.out.print("Los tres números son distintos.");
			}
			else {
			System.out.print ("Dos números son diferentes.");
			}
		}

		teclado.close();
	}
}