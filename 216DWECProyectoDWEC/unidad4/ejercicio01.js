/**
 * Número de actividad: 01
 * Nombre actividad: Funciones predefinidas y definidas por el usuario.
 * Enunciado: Crear un programa que:
 *           1. Pida al usuario una lista de números.
 *           2. Guarde esos números en un array.
 *           3. Calcule suma, máximo, mínimo y promedio usando funciones.
 *           4. Muestre los resultados por pantalla.
 * 
 * Fecha de creación: 15 de noviembre de 2025
 * Última revisión: 16 de noviembre de 2025
 */

// Lo primero que hacemos es pedir al usuario que introduzca una lista de números separados por comas, utilizaremos split para convertir la cadena en un array
let entrada = prompt("Introduzca números separados por comas (por ejemplo: 5,10,15): ");
let numeros = entrada.split(",").map(Number); // Convertimos cada elemento a número

// Hacemos una comprobación para evitar errores en caso de que el usuario introduzca algo no numérico
if (numeros.some(isNaN)) {
    console.log("Por favor, introduzca solo números válidos separados por comas.");
} else {
    // Funciones para calcular suma, máximo, mínimo y promedio
    function calcularSuma(arr) {
        return arr.reduce((acc, num) => acc + num, 0);
    }

    function calcularMaximo(arr) {
        return Math.max(...arr);
    }

    function calcularMinimo(arr) {
        return Math.min(...arr);
    }

    function calcularPromedio(arr) {
        return calcularSuma(arr) / arr.length;
    }

    // Una vez definidas las funciones, las llamamos
    let suma = calcularSuma(numeros);
    let maximo = calcularMaximo(numeros);
    let minimo = calcularMinimo(numeros);
    let promedio = calcularPromedio(numeros);

    // Para finalizar, mostramos los resultados por pantalla (para ello se muestra en la consola y mediante una alerta en pantalla)
    console.log("Números introducidos: ", numeros);
    console.log("Suma: " + suma);
    console.log("Máximo: " + maximo);
    console.log("Mínimo: " + minimo);
    console.log("Promedio: " + promedio);

    // Esto son las alertas por pantalla mediante un aviso
    alert(
        "Números introducidos: " + numeros +
        "\nSuma: " + suma +
        "\nMáximo: " + maximo +
        "\nMínimo: " + minimo +
        "\nPromedio: " + promedio
    );
}