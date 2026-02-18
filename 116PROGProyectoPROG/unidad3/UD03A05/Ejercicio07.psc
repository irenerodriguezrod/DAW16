/*
 * Ejercicio07 - Pseudocódigo
 * Unidad: 3    Actividad: 7
 * Descripción: Solicitar un entero positivo y comprobar si es número perfecto.
 *
 * Pseudocódigo:
 * INICIO
 *   LEER n
 *   MIENTRAS n <= 0 HACER
 *     ESCRIBIR "Error en la entrada"
 *     LEER n
 *   FIN MIENTRAS
 *   suma <- 0
 *   PARA i DESDE 1 HASTA n/2 HACER
 *     SI n % i == 0 ENTONCES
 *       suma <- suma + i
 *     FIN SI
 *   FIN PARA
 *   SI suma == n ENTONCES
 *     ESCRIBIR "El número introducido es un número perfecto"
 *   SINO
 *     ESCRIBIR "El número introducido no es un número perfecto"
 *   FIN SI
 * FIN
 *
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 16 de febrero de 2026
 */