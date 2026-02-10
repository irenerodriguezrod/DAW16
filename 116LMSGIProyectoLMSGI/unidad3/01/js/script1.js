document.addEventListener("DOMContentLoaded", function () {

    // Botones
    const boton1 = document.getElementById("boton1");
    const boton2 = document.getElementById("boton2");
    const boton3 = document.getElementById("boton3");

    // Elementos principales
    const cuerpo = document.getElementById("cuerpo");
    const titulo = document.getElementById("titulo");
    const parrafos = document.querySelectorAll(".parrafo");

    // Estilos iniciales
    titulo.innerHTML = "3.1 DOCUMENT OBJECT MODEL";
    titulo.style.color = "#333";
    titulo.style.fontWeight = "bold";
    titulo.style.marginBottom = "15px";
    titulo.style.textTransform = "uppercase";

    cuerpo.style.backgroundColor = "#f4f4f4";
    cuerpo.style.textAlign = "center";

    parrafos.forEach((p, i) => {
        p.style.fontSize = "18px";
        p.style.padding = "10px";
        p.style.width = "60%";
        p.style.margin = "15px auto";
        p.style.borderLeft = "solid 5px";
        p.style.borderRadius = "5px";
        // Colores de cada párrafo
        if (i === 0) { p.style.color = "#e74c3c"; p.style.backgroundColor = "#ffe6e6"; p.style.borderColor = "#c0392b"; }
        if (i === 1) { p.style.color = "#2ecc71"; p.style.backgroundColor = "#eaffea"; p.style.borderColor = "#27ea60"; }
        if (i === 2) { p.style.color = "#3498db"; p.style.backgroundColor = "#e6f2ff"; p.style.borderColor = "#2980b9"; }
    });

    // Eventos
    boton1.addEventListener("click", saludar);
    boton2.addEventListener("click", cambiarColor);
    boton3.addEventListener("click", cambiarParrafos);

    // Funciones
    function saludar() {
        alert("Hola, usuario! :)");
    }

    function cambiarColor() {
        if (cuerpo.style.backgroundColor === "black") {
            cuerpo.style.backgroundColor = "white";
            cuerpo.style.color = "black";
            titulo.style.color = "black";
            boton2.textContent = "Fondo oscuro";
        } else {
            cuerpo.style.backgroundColor = "black";
            cuerpo.style.color = "white";
            titulo.style.color = "white";
            boton2.textContent = "Fondo claro";
        }
    }

    function cambiarParrafos() {
        parrafos.forEach((p) => {
            p.classList.toggle("estilo-modificado");
        });
    }

});

// funcion cambiar parrafos
/*function cambiarParrafos() {
    let parrafos = document.querySelectorAll(".parrafo");

    parrafos.forEach((p) => {// la p es la abreviatura de párrafo, lo que hace es que por cada parrafo aplica unos estilos; depende del bucle if
        // este bucle sirve para verificar si ya tiene los estilos aplicados
        if (p.style.fontSize === "20px") {
            // en caso de que los tenga, volvemos al estado original
            p.style.fontSize = ""; //no se pone nada, se deja en blanco para que vuelva a los estilos que tenia de origen
            p.style.letterSpacing = "";
            p.style.fontWeight = "";
            p.style.transform = "";
        } else {
            // aplicamos los cambios en caso de que no los tenga
            p.style.fontSize = "20px"; // Aumenta el tamaño de la fuente
            p.style.letterSpacing = "2px"; // Aumenta el espaciado entre letras
            p.style.fontWeight = "bold"; // Aplica negrita
            p.style.transform = "rotate(1deg)"; // Aplica una ligera rotación
        }
    });
}*/

//función cambiar párrafos, optimizado.
/*function cambiarParrafos(){
    let parrafos = document.getElementsByTagName("p");
    let boton3 = document.getElementById("boton3");
    
    for (let i = 0; i < parrafos.length; i++){
        parrafos[i].classList.toggle("estilo-modificado");
    }

    boton3.value = boton3.value === 
    /*estilos agregados en el css para cuando se activa esto del js
    .estilo-modificado{
        font-weight: bold;
        font-size: 20px;
        letter-spacing: 2px
    }
}*/