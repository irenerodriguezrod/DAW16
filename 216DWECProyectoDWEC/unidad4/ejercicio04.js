/**
 * Número de actividad: 04
 * Nombre actividad: Encapsulamiento y herencia.
 * Enunciado:
 *   Crea una clase Vehiculo con atributos privados: marca y velocidad.
 *   1. Haz una subclase Coche que añada número de puertas.
 *   2. Implementa getters y setters con validación (velocidad ≥ 0).
 *   3. Crea un objeto Coche y muestra sus datos.
 * 
 * Fecha de creación: 16 de noviembre de 2025
 * Última revisión: 16 de noviembre de 2025
 */

class Vehiculo {
    // Atributos privados
    #marca;
    #velocidad;

    constructor(marca, velocidad) {
        this.#marca = marca;
        this.setVelocidad(velocidad); // para validar
    }

    // Getter para marca
    getMarca() {
        return this.#marca;
    }

    // Getter para velocidad
    getVelocidad() {
        return this.#velocidad;
    }

    // Setter con validación
    setVelocidad(nuevaVelocidad) {
        if (nuevaVelocidad >= 0) {
            this.#velocidad = nuevaVelocidad;
        } else {
            console.error("Error: La velocidad no puede ser negativa.");
        }
    }
}

// Subclase
class Coche extends Vehiculo {
    constructor(marca, velocidad, puertas) {
        super(marca, velocidad); // Llamamos al constructor de Vehiculo
        this.puertas = puertas;
    }

    mostrarDatos() {
        console.log("Marca:", this.getMarca());
        console.log("Velocidad:", this.getVelocidad() + " km/h");
        console.log("Puertas:", this.puertas);
    }
}

// Creamos objeto de tipo Coche
const miCoche = new Coche("Toyota", 120, 5);

// Mostramos los datos
miCoche.mostrarDatos();

// ejemplo de validación cambiando la velocidad
miCoche.setVelocidad(-50); // Error
miCoche.setVelocidad(180); // OK

console.log("Nueva velocidad:", miCoche.getVelocidad());
