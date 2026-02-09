/*
ACTIVIDAD 2
AUTOR: Irene Rodríguez Rodríguez
FECHA: 25/10/2025
ENUNCIADO:
Escribe un programa en JavaScript que pida un número y diga si es positivo, negativo o cero,
usando las estructuras condicionales if, else if y else.
*/

// Pedimos al usuario un número (prompt devuelve una cadena de texto)
let numero = prompt("Introduzca un número:");

// Comprobamos si el valor introducido es válido
if (numero > 0) {
  console.log("El número " + numero + " es positivo.");
} else if (numero < 0) {
  console.log("El número " + numero + " es negativo.");
} else {
  console.log("El número es cero.");
}
