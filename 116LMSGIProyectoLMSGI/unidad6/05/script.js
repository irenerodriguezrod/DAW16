
    const ejercicios = [
    { id: "q1", resultado: "txt" },
    { id: "q2", resultado: "txt" },
    { id: "q3", resultado: "txt" },
    { id: "q4", resultado: "txt" },
    { id: "q5", resultado: "txt" }
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

