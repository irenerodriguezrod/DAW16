/** fetch("info.json")
    .then(response => response.json())
    .then(datos => {
        const tablaEjercicios = document.querySelector("#tablaEjercicios tbody");

        datos.forEach(item => {
            console.log(`Ejercicio: ${item.ejercicio}, Imagen Query: ${item.imagenXQuery}, Resultado: ${item.resultado}`);
            
            let fila = document.createElement("tr");

            fila.innerHTML = `
                <td>${item.ejercicio}</td>
                <td><img src="${item.imagenXQuery}" alt="Imagen de ${item.ejercicio}" onerror="this.style.display='none';"></td>
                <td>${item.resultado ? `<img src="${item.resultado}" alt="Resultado de ${item.ejercicio}" onerror="this.style.display='none';">` : "Sin resultado"}</td>
            `;

            tablaEjercicios.appendChild(fila);
        });
    })
    .catch(error => console.error("Error al cargar los datos:", error)); **/

    const ejercicios = [
    { id: "01", resultado: "txt" },
    { id: "02", resultado: "txt" },
    { id: "03", resultado: "html" },
    { id: "04", resultado: "xml" },
    { id: "05", resultado: "html" },
    { id: "06", resultado: "txt" },
    { id: "07", resultado: "xml" },
    { id: "08", resultado: "html" },
    { id: "09", resultado: "xml" },
    { id: "10", resultado: "xml" },
    { id: "11", resultado: "xml" },
    { id: "12", resultado: "xml" },
    { id: "13", resultado: "txt" },
    { id: "14", resultado: "xml" },
    { id: "15", resultado: "xml" },
    { id: "16", resultado: "xml" },
    { id: "17", resultado: "xml" },
    { id: "18", resultado: "xml" },
    { id: "19", resultado: "xml" },
    { id: "20", resultado: "xml" },
    { id: "21", resultado: "xml" },
    { id: "22", resultado: "xml" },
    { id: "23", resultado: "xml" },
    { id: "24", resultado: "xml" },
    { id: "25", resultado: "xml" },
    { id: "26", resultado: "xml" },
    { id: "27", resultado: "xml" },
    { id: "28", resultado: "html" }
];

const tbody = document.querySelector("#tablaEjercicios tbody");

ejercicios.forEach(ej => {
    const tr = document.createElement("tr");

    tr.innerHTML = `
        <td>${ej.id}</td>
        <td><pre id="xq-${ej.id}">Cargando XQuery...</pre></td>
        <td><pre id="res-${ej.id}">Cargando resultado...</pre></td>
    `;

    tbody.appendChild(tr);

    cargarArchivo(`src/${ej.id}.xq`, `xq-${ej.id}`);
    cargarArchivo(`target/${ej.id}.${ej.resultado}`, `res-${ej.id}`);
});

/* ---------- función reutilizable ---------- */
function cargarArchivo(ruta, contenedorId) {
    fetch(ruta)
        .then(res => res.text())
        .then(texto => {
            document.getElementById(contenedorId).textContent = texto;
        })
        .catch(() => {
            document.getElementById(contenedorId).textContent =
                "No se pudo cargar el archivo.";
        });
}
