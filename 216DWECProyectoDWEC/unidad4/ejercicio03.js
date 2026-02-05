/**
 * Número de actividad: 03
 * Nombre actividad: Programación orientada a objetos.
 * Enunciado:
 *   Crea una clase Figura con método area().
 *   1. Haz dos subclases: Cuadrado y Circulo.
 *   2. Cada subclase debe calcular su área.
 *   3. Crea una lista con varias figuras y muestra sus áreas.
 * 
 * Fecha de creación: 16 de noviembre de 2025
 * Última revisión: 16 de noviembre de 2025
 */

// Clase base
class Figura {
    area() {
        return 0; // Devuelve 0 porque no tiene fórmula y no sabemos la figura que es todavía
    }
}

// Subclase Cuadrado
class Cuadrado extends Figura {
    constructor(lado) {
        super();
        this.lado = lado;
    }

    area() {
        return this.lado * this.lado;
    }
}

// Subclase Circulo
class Circulo extends Figura {
    constructor(radio) {
        super();
        this.radio = radio;
    }

    area() {
        return Math.PI * this.radio * this.radio;
    }
}

// Crear lista de figuras
const figuras = [
    new Cuadrado(4),  // Lado: 4
    new Cuadrado(6),  // Lado: 6
    new Circulo(3),   // Radio: 3
    new Circulo(5)    // Radio: 5
];

// Mostrar el área de cada figura
figuras.forEach((figura, index) => {
    console.log(`Figura ${index + 1}: Área = ${figura.area().toFixed(2)}`); //toFixed redondea y limita a N el número de decimales mostrados
});

