/**
 * Número de actividad: 02
 * Nombre actividad: Objetos personalizados.
 * Enunciado: Crea una clase Alumno con: nombre, edad y nota.
 *          1. Pide datos de 3 alumnos y guárdalos en una lista.
 *          2. Muestra:
 *              a. El alumno con la nota más alta.
 *              b. El promedio de notas.
 * 
 * Fecha de creación: 15 de noviembre de 2025
 * Última revisión: 16 de noviembre de 2025
 */

//Primero creamos la clase Alumno con su constructor
class Alumno {
    constructor(nombre, edad, nota) {
        this.nombre = nombre;
        this.edad = edad;
        this.nota = nota;
    }
}

//Luego creamos un array para guardar los alumnos
const alumnos = [];

//Pedimos los datos de 3 alumnos
for (let i = 1; i <= 3; i++) {
    const nombre = prompt(`Introduce el nombre del alumno ${i}: `); // Se ponen este tipo de comillas ya que no van las dobles
    const edad = prompt(`Introduzca la edad de ${nombre}: `);
    const nota = prompt(`Introduzca la nota de ${nombre}: `);

    alumnos.push(new Alumno(nombre, parseInt(edad), parseFloat(nota)));
}

// Calculamos el alumno con mejor nota
const mejorAlumno = alumnos.reduce((max, alumno) =>
    alumno.nota > max.nota ? alumno : max
);

// Calculamos el promedio
const promedioNotas = alumnos.reduce((sum, alumno) => sum + alumno.nota, 0) / alumnos.length;

// Mostramos los resultados
console.log("Listado de alumnos introducidos:");
console.table(alumnos);

console.log(`Alumno con la nota más alta: ${mejorAlumno.nombre} (${mejorAlumno.nota})`);
console.log(`Promedio de notas: ${promedioNotas.toFixed(2)}`);

alert(
    `Alumno con mejor nota: ${mejorAlumno.nombre} (${mejorAlumno.nota})\n` +
    `Promedio de notas: ${promedioNotas.toFixed(2)}`
);