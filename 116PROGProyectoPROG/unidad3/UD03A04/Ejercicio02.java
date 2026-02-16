/**
 * Unidad: 3
 * Actividad: 2.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un
 * algoritmo que solicite por teclado la hora, los minutos y segundos de una hora hasta
 * que sea correcta y cuando sea correcta muestre por pantalla la hora convertida a segundos.
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */ 

import java.util.Scanner;

public class Ejercicio02 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
		int hora, min, seg;
		int segTotales;
		
		do {
			System.out.print("Introduzca una hora: ");
			hora=teclado.nextInt();
			System.out.print("Introduzca minutos: ");
			min=teclado.nextInt();
			System.out.print("Introduzca segundos: ");
			seg=teclado.nextInt();
		
		} while(hora>=0 || hora<=23 || min>=0 || min<=59 || seg>=0 || seg<=59);
		segTotales=(hora*3600)+(min*60)+seg;
		System.out.print("Las horas, minutos y segundos introducidos equivalen a "+segTotales);

		teclado.close();
	}
}