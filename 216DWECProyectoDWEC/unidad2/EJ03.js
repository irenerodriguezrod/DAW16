/*
ACTIVIDAD 3
AUTORA: Irene Rodríguez Rodríguez
FECHA: 25/10/2025
ENUNCIADO:
Convierte un número escrito como texto en un número entero y muestra su doble.
*/

// Pedimos al usuario un número
let numero = prompt("Introduzca un número:");

// Convertimos el texto a número entero
let numeroEntero = parseInt(numero);

// Comprobamos si la conversión fue correcta y si el valor introducido es válido
if (isNaN(numeroEntero)) {
  console.log("Por favor, introduzca un número válido.");
} else {
  // Calculamos el doble
  let doble = numeroEntero * 2;
  console.log("El doble de " + numeroEntero + " es " + doble + ".");
}