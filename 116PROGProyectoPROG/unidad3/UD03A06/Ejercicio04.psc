/*
 * Ejercicio04 - Pseudocódigo
 * Unidad: 3    Actividad: 4
 * Descripción: Solicitar un número entero positivo n y mostrar los números primos entre 1 y n, y cuántos son.
 *
 * Pseudocódigo:
 * INICIO
 *   ESCRIBIR "Introduzca un entero positivo (n): "
 *   LEER n
 *   si n < 2 entonces
 *     ESCRIBIR "No hay primos en ese rango"
 *     FIN
 *   contadorPrimos <- 0
 *   PARA num DESDE 2 HASTA n HACER
 *     esPrimo <- verdadero
 *     PARA d DESDE 2 HASTA truncar(sqrt(num)) HACER
 *       SI num % d == 0 ENTONCES
 *         esPrimo <- falso
 *         ROMPER
 *       FIN SI
 *     FIN PARA
 *     SI esPrimo ENTONCES
 *       ESCRIBIR num
 *       contadorPrimos <- contadorPrimos + 1
 *     FIN SI
 *   FIN PARA
 *   ESCRIBIR "Total de primos: ", contadorPrimos
 * FIN
 *
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */
