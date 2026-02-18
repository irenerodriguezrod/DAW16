/**
 * Unidad: 3
 * Actividad: 5.
 * Descripción: Realiza la codificación en lenguaje de programación Java de un algoritmo que 
 * solicite por teclado un número de filas y de columnas (enteros comprendidos entre 2 y 10) y muestre por pantalla 
 * una figura similar a la siguiente (filas=5, columnas=10).
 * 
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */

import java.util.Scanner;

public class Ejercicio05 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int filas = 0;
        int columnas = 0;
        boolean valido = false;
        
        // Solicitar y validar el número de filas
        while (!valido) {
            System.out.print("Ingrese el número de filas (2-10): ");
            if (scanner.hasNextInt()) {
                filas = scanner.nextInt();
                if (filas >= 2 && filas <= 10) {
                    valido = true;
                } else {
                    System.out.println("Por favor, ingrese un número entre 2 y 10.");
                }
            } else {
                scanner.nextLine(); // Limpiar el buffer
                System.out.println("Por favor, ingrese un número válido.");
            }
        }
        
        // Solicitar y validar el número de columnas
        valido = false;
        while (!valido) {
            System.out.print("Ingrese el número de columnas (2-10): ");
            if (scanner.hasNextInt()) {
                columnas = scanner.nextInt();
                if (columnas >= 2 && columnas <= 10) {
                    valido = true;
                } else {
                    System.out.println("Por favor, ingrese un número entre 2 y 10.");
                }
            } else {
                scanner.nextLine(); // Limpiar el buffer
                System.out.println("Por favor, ingrese un número válido.");
            }
        }
        
        // Mostrar la figura (rectángulo de asteriscos)
        System.out.println("\nFigura resultante:");
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
        
        scanner.close();
    }

}
