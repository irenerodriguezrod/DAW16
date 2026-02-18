/*
 * Ejercicio04 - Pseudocódigo
 * Unidad: 3    Actividad: 4
 * Descripción: Leer enteros comprendidos entre 1 y 10 hasta que se introduzca uno fuera de ese rango.
 * Calcular y mostrar la media de los números leídos dentro del rango.
 *
 * Pseudocódigo:
 * INICIO
 *   contador <- 0
 *   acumulador <- 0
 *   LEER n
 *   MIENTRAS n >= 1 Y n <= 10 HACER
 *     contador <- contador + 1
 *     acumulador <- acumulador + n
 *     LEER n
 *   FIN MIENTRAS
 *   SI contador != 0 ENTONCES
 *     ESCRIBIR acumulador / contador
 *   SINO
 *     ESCRIBIR "No se ha introducido ningún número entero dentro del rango"
 *   FIN SI
 * FIN
 *
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */
