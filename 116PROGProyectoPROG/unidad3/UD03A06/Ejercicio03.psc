/*
 * Ejercicio03 - Pseudocódigo
 * Unidad: 3    Actividad: 3
 * Descripción: Solicitar cuatro números binarios y mostrarlos en decimal.
 *
 * Pseudocódigo:
 * INICIO
 *   PARA contador DESDE 1 HASTA 4 HACER
 *     ESCRIBIR "Introduzca numero binario: "
 *     LEER numeroBinario
 *     acumulador <- 0
 *     peso <- 1
 *     MIENTRAS numeroBinario != 0 HACER
 *       digito <- numeroBinario % 10
 *       acumulador <- acumulador + digito * peso
 *       peso <- peso * 2
 *       numeroBinario <- numeroBinario / 10
 *     FIN MIENTRAS
 *     ESCRIBIR acumulador
 *   FIN PARA
 * FIN
 *
 * Autor: Irene RODRIGUEZ RODRIGUEZ
 * Fecha: 18 de febrero de 2026
 */
