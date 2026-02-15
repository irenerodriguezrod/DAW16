/**
 * Unidad: 3
 * Actividad: 2.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado los tres ángulos de un
 * triángulo y si la suma de los mismos es 180 muestre por pantalla si se
 * trata de un triángulo rectángulo, obtusángulo o acutángulo. Un triángulo
 * es rectángulo si el valor de uno de sus ángulos es 90, es obtusángulo si el
 * valor de uno de sus ángulos es mayor de 90 y es acutángulo si el valor de
 * cada uno de sus tres ángulos es menor de 90.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio02 {
	public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int n1, n2, n3;
		
		System.out.print("Introduzca el primer ángulo del triángulo: ");
		n1=teclado.nextInt();
		System.out.print("Introduzca el segundo ángulo del triángulo: ");
		n2=teclado.nextInt();
		System.out.print("Introduzca el tercer ángulo del triángulo: ");
		n3=teclado.nextInt();
		//string salida
		
		if (n1==90 && n2==90 && n3==90) {
			System.out.print("No hay error en la entrada");
		}
		
		if (n1==90 || n2==90 || n3=90){
			System.out.print("Es un triángulo rectángulo"); // salida="triangulo rectangulo";
		}
		else {
			if (n1>=90 || n2>=90 || n3>=90) {
				System.out.print("Es un triángulo obtusángulo");// salida="Triangulo obtusangulo";
			}
			else {
				System.out.print("Es un triángulo acutángulo");
			}
		}
		//system.out.print(salida);
		teclado.close();
	}
}