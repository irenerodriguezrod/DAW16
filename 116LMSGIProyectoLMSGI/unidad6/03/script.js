fetch("info.json")
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
    .catch(error => console.error("Error al cargar los datos:", error));