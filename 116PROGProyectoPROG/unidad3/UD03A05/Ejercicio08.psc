/*
 * Ejercicio08 - Pseudocódigo
 * Unidad: 3    Actividad: 8
 * Descripción: Solicitar un entero positivo y mostrar si es primo.
 *
 * Pseudocódigo:
 * INICIO
 *   LEER n
 *   MIENTRAS n <= 0 HACER
 *     ESCRIBIR "Error en la entrada"
 *     LEER n
 *   FIN MIENTRAS
 *   esPrimo <- verdadero
 *   PARA i DESDE 2 HASTA n/2 HACER
 *     SI n % i == 0 ENTONCES
 *       esPrimo <- falso
 *       ROMPER
 *     FIN SI
 *   FIN PARA
 *   SI esPrimo ENTONCES
 *     ESCRIBIR "El número ", n, " es primo."
 *   SINO
 *     ESCRIBIR "El número ", n, " no es primo."
 *   FIN SI
 * FIN
 *
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */