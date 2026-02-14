/**
 * Unidad: 3
 * Actividad: 7.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación
 * Java de un algoritmo que solicite por teclado un año y muestre por
 * pantalla un mensaje indicando si el año es bisiesto o no. Un año es
 * bisiesto si es divisible entre 400 o si es divisible entre 4 pero no entre 100
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 14 de febrero de 2026
 */
import java.util.Scanner;

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int anyo;
		String salida;
		
		System.out.print("Introduzca un año: ");
		anyo=teclado.nextInt();
		
		if (anyo%400==0 || (anyo%4==0 && anyo%100!=0)) {
			salida="bisiesto";
		}
		else {
			salida="no bisiesto";
		}
		
		System.out.print(salida);

		teclado.close();
	}
}