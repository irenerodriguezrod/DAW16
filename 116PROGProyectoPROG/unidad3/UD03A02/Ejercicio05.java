/**
 * Unidad: 3
 * Actividad: 5.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación 
 * Java de un algoritmo que solicite por teclado tres números enteros
 * positivos y muestre por pantalla un mensaje indicando si el tercer número
 * está más cerca del primero o del segundo
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */
import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int numero1, numero2, numero3, diferencia1, diferencia2;
		
		System.out.print("Introduzca el primer numero entero: ");
		numero1=teclado.nextInt();
		System.out.print("Introduzca el segundo numero entero: ");
		numero2=teclado.nextInt();
		System.out.print("Introduzca el tercer numero entero: ");
		numero3=teclado.nextInt();
		
		diferencia1=-numero3-numero1;
		diferencia2=numero3-numero2;
	
		if (diferencia1>diferencia2) { //if (Math.abs(numero3-numero1)<Math.abs(numero3-numero2)) {
			System.out.print("El número "+numero3+" está más cerca de: "+numero2);
		}
		else {
			System.out.print("El número "+numero3+" está más cerca de: "+numero1);
		}

		teclado.close();
	}
}