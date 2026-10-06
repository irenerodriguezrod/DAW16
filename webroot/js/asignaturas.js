fetch("/webroot/data/asignaturas.json")
    .then(response => response.json())
    .then(data => {
        mostrarAsignaturas(data.curso1, "asignaturas-curso1");
        mostrarAsignaturas(data.curso2, "asignaturas-curso2");
    })
    .catch(error => {
        console.error("Error al cargar las asignaturas:", error);
    });


function mostrarAsignaturas(asignaturas, contenedorId) {
    const contenedor = document.getElementById(contenedorId);

    asignaturas.forEach(asignatura => {

        const enlace = document.createElement("a");

        enlace.href = asignatura.disponible
            ? asignatura.ruta
            : "/webroot/error/404.html";


        const imagenContainer = document.createElement("div");
        imagenContainer.classList.add("imagen-container");


        const imagen = document.createElement("img");
        imagen.src = asignatura.imagen;
        imagen.alt = asignatura.alt;
        imagen.id = asignatura.id;


        const nombre = document.createElement("span");
        nombre.classList.add("asignatura");
        nombre.textContent = asignatura.codigo;


        const nombreCompleto = document.createElement("span");
        nombreCompleto.classList.add("asignatura-full");
        nombreCompleto.textContent = asignatura.nombre;


        imagenContainer.appendChild(imagen);
        imagenContainer.appendChild(nombre);
        imagenContainer.appendChild(nombreCompleto);

        enlace.appendChild(imagenContainer);
        contenedor.appendChild(enlace);
    });
}