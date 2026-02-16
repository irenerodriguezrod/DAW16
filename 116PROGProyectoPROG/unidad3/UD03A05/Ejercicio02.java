/**
 * Unidad: 3
 * Actividad: 2
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de
 * programación Java de un algoritmo que solicite por teclado un número entero 
 * comprendido entre 1 y 10 y muestre por pantalla la tabla de multiplicar de dicho número.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */ 


import java.util.Scanner;

public class Ejercicio02 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		
		int n;
		
		System.out.print("Introduzca un número entero (1-10): ");
		n=teclado.nextInt();
		
		while (n<1 || n>10) {
			System.out.print("Error en la entrada");
			
			System.out.print("Introduzca un número entero (1-10): ");
			n=teclado.nextInt();
		}
		
		for (int i=1;i<=10;i++) { //la variable i se declara como entero (int) se declara en el metodo para
			System.out.printf("%d * %d = %d\n",n,i,n*i); // System.out.println(i+"*"+n+"="+i*n); 
		}

		teclado.close();
	}
}			