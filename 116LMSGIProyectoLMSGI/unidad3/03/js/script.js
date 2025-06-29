/* 
Las imágenes se almacenan en un array 
*/
const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8',
];

/* 
Para generar un número aleatorio entre 1 y 6 se utiliza lo siguiente:
    Math.random() devuelve un número aleatorio entre 0 y 1. 
    Se multiplica por la longitud del array de imágenes y se redondea hacia abajo
    con Math.floor() para obtener un índice válido

const numero = Math.floor(Math.random() * imagenes.length);
*/

/*
Definir donde tienen que ir las imágenes
*/
const tablero = document.getElementById("tablero");

/*
Generar las imágenes aleatoriamente
*/
for (let i = 0; i < 6; i++) {
    const casilla = document.createElement("div");
    casilla.classList.add("casilla"); // Añadimos clase para estilo
    tablero.appendChild(casilla);

    // Evento click para cada casilla
    casilla.addEventListener("click", function () {
        if (casilla.innerHTML === "") { // Solo si está vacía
            const numero = Math.floor(Math.random() * imagenes.length);
            casilla.innerHTML = `<img src="${imagenes[numero]}">`; // AÑADIMOS imagen
        }
    });

    // Evento: al pasar el ratón por encima, si la casilla está vacía cambia el color. Este efecto está comentado en el .CSS
    casilla.addEventListener("mouseenter", () => {
        if (casilla.innerHTML === "") {
            casilla.style.backgroundColor = "rgb(182, 215, 132)";
        }
    });

    casilla.addEventListener("mouseleave", () => {
        if (casilla.innerHTML === "") {
            casilla.style.backgroundColor = "";
        }
    });

}

// Evento: botón que vacía el tablero
document.getElementById("vaciarTablero").addEventListener("click", () => {
    const casillas = document.querySelectorAll(".casilla");
    
    casillas.forEach(casilla => {
        casilla.innerHTML = "";
        casilla.style.backgroundColor = ""; // Restaurar color también
    });
});

// Evento: rellenar todas las casillas
document.getElementById("rellenarTablero").addEventListener("click", () => {
    const casillas = document.querySelectorAll(".casilla");

    casillas.forEach(casilla => {
        if (casilla.innerHTML === "") {
            const numero = Math.floor(Math.random() * imagenes.length);
            casilla.innerHTML = `<img src="${imagenes[numero]}">`;
        }
    });
});
