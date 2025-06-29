fetch("info.json")
    .then(response => response.json())
    .then(datos => {
        const tablaEjercicios = document.querySelector("#tablaEjercicios tbody");

        datos.forEach(item => {
            console.log(`Ejercicio: ${item.ejercicio}, Imagen Query: ${item.imagenXQuery}, Resultado: ${item.resultado}`);

            // Usar directamente la ruta de info.json sin modificaciones
            let rutaImagen = item.imagenXQuery;
            let rutaResultado = item.resultado ? item.resultado : "";

            let fila = document.createElement("tr");

            fila.innerHTML = `
                <td>${item.ejercicio}</td>
                <td><img src="${rutaImagen}" alt="Imagen de ${item.ejercicio}" class="zoomable" onerror="this.style.display='none';"></td>
                <td>${item.resultado ? `<img src="${rutaResultado}" alt="Resultado de ${item.ejercicio}" class="zoomable" onerror="this.style.display='none';">` : "Sin resultado"}</td>
            `;

            tablaEjercicios.appendChild(fila);
        });

        // Crear un modal de imagen al hacer clic (después de agregar las imágenes)
        document.querySelectorAll(".zoomable").forEach(img => {
            img.addEventListener("click", () => {
                let modal = document.createElement("div");
                modal.style.position = "fixed";
                modal.style.top = "0";
                modal.style.left = "0";
                modal.style.width = "100%";
                modal.style.height = "100%";
                modal.style.backgroundColor = "rgba(0, 0, 0, 0.8)";
                modal.style.display = "flex";
                modal.style.alignItems = "center";
                modal.style.justifyContent = "center";
                modal.style.cursor = "pointer";

                let imagenAmpliada = document.createElement("img");
                imagenAmpliada.src = img.src;
                imagenAmpliada.style.maxWidth = "90%";
                imagenAmpliada.style.maxHeight = "90%";
                imagenAmpliada.style.borderRadius = "10px";

                modal.appendChild(imagenAmpliada);
                document.body.appendChild(modal);

                // Cierra el modal al hacer clic en cualquier parte
                modal.addEventListener("click", () => {
                    document.body.removeChild(modal);
                });
            });
        });
    });
