/**
 * Unidad: 3
 * Actividad: 5.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un algoritmo que solicite por teclado
 * el día, el mes y el año de una fecha y muestre por pantalla un mensaje indicando si la fecha es correcta o incorrecta.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 15 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int anyo, mes, dia;
		
		System.out.print("Introduzca un año: ");
		anyo=teclado.nextInt();
		System.out.print("Introduzca un mes: ");
		mes=teclado.nextInt();
		System.out.print("Introduzca un dia: ");
		dia=teclado.nextInt();
		
		if(esFechaValida(dia,mes,anyo)) {
			System.out.println("Fecha correcta");
		}
		else {
			System.out.println("Fecha incorrecta");
		}

		teclado.close();
	}
	
	private static boolean esFechaValida(int dia, int mes, int anyo){		//no tienen porque tener el mismo nombre las variables declaradas aqui, lo importante es el orden 
		 return (anyo>1586 && mes>=1 && mes<=12 && dia>=1 && dia<=getdiasMes)
	}
	
	private static int getDiasMes(int mes) { //son metodos estaticos, porque el valor principal es STATIC
		return switch(mes){ //se emplea el switch como expresion para que devuelva un valor
				case 1,3,5,7,8,10,12 ->31;
				case 4,6,9,11 -> 30;
				case 2 -> 28;
				default ->0; // la equivalencia de -> es el break en la anterior version de Java
			};
	}
}