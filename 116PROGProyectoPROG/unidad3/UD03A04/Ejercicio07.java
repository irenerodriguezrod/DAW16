/**
 * Unidad: 3
 * Actividad: 7.
 * Descripción: Realiza el pseudocódigo y la codificación en lenguaje de programación Java de un
 * algoritmo que solicite por teclado dos números enteros positivos (a y b) y muestre por 
 * pantalla el máximo común divisor calculándolo mediante el algoritmo de Euclides.
 * 	 - Si a es menor que b se intercambian los valores
 * 	 - Sea r el resto de dividir a entre b
 * 	 - Si r=0 entonces mcd(a,b)=b sino mcd(a,b)=mcd(b,r)
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio07 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.print("Ingrese el primer número entero positivo (a): ");
        int a = teclado.nextInt();

        System.out.print("Ingrese el segundo número entero positivo (b): ");
        int b = teclado.nextInt();

        int mcd = calcularMCD(a, b);

        System.out.println("El máximo común divisor de " + a + " y " + b + " es: " + mcd);

        teclado.close();
    }

    public static int calcularMCD(int a, int b) {
        // Si a es menor que b se intercambian los valores
        if (a < b) {
            int temp = a;
            a = b;
            b = temp;
        }

        // Algoritmo de Euclides
        while (b != 0) {
            // Sea r el resto de dividir a entre b
            int r = a % b;

            // Si r=0 entonces mcd(a,b)=b sino mcd(a,b)=mcd(b,r)
            a = b;
            b = r;
        }

        return a;
    }
}