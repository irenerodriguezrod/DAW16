//Buscar los elementos en el HTML por el ID 
var titulo = document.getElementById("titulo")
var parrafo = document.getElementsByClassName("parrafo")
var cuerpo = document.getElementById("cuerpo")

titulo.innerHTML = "3.1 DOCUMENT OBJECT MODEL"
//Las siguientes lineas se han comentado para poder realizar el ejercicioo 3.1
//parrafo[0].innerText = "Parrafo 1 modificado"
//parrafo[1].innerText = "Parrafo 2 modificado"
//parrafo[2].innerText = "Parrafo 3 modificado"

/*
parrafo[0].outerHTML ="<div>Parrafo 11 modificado</div>"
  Si se pone el div, ya no lo considera como parafo, sino 
  que lo considera como div y ya no lo toma en cuenta para
  futuros cambios de la variable parrafo 
*/
parrafo = document.getElementsByClassName("parrafo")

// Cuerpo: color de fondo: #f4f4f4; Fondo gris claro y texto centrado
cuerpo.style.backgroundColor = "#f4f4f4"
cuerpo.style.textAlign = "center"

// Titulo: color #333, negrita, margen inferior 15px y en mayúsculas (text-transform:uppercase).
titulo.style.color = "#333"
titulo.style.fontWeight = "bold"
titulo.style.marginBottom = "15px"
titulo.style.textTransform = "uppercase"

/* // Parrafos: Tamaño fuente 18px, padding 10px, ancho 60%, border izquierdo 5px solido, border radio 5px y altura línea 1.6
// tamaño fuente
parrafo[0].style.fontSize = "18px"
parrafo[1].style.fontSize = "18px"
parrafo[2].style.fontSize = "18px"

//padding
parrafo[0].style.padding = "10px"
parrafo[1].style.padding = "10px"
parrafo[2].style.padding = "10px"

//ancho
parrafo[0].style.width = "60%"
//al poner el ancho del 60%, los parrafos se mueven para la 
izquierda... para que se queden centrados hay que poner margin auto 
parrafo[0].style.margin = "auto"
parrafo[1].style.width = "60%"
parrafo[1].style.margin = "auto"
parrafo[2].style.width = "60%"
parrafo[2].style.margin = "auto"

//border iquierdo 5px solido, border radio
parrafo[0].style.borderLeft = "solid 5px"
parrafo[0].style.borderRadius = "5px"
parrafo[1].style.borderLeft = "solid 5px"
parrafo[1].style.borderRadius = "5px"
parrafo[2].style.borderLeft = "solid 5px"
parrafo[2].style.borderRadius = "5px" */

//Lo correcto para los párrafos sería hacer un bucle for 
for (let i = 0; i < parrafo.length; i++) {
  parrafo[i].style.fontSize = "18px";
  parrafo[i].style.padding = "10px";
  parrafo[i].style.width = "60%";
  parrafo[i].style.margin = "15px auto";
  parrafo[i].style.borderLeft = "solid 5px"
  parrafo[i].style.borderRadius = "5px"
}

// Parrafo 1: color fuente rojo #e74c3c; , color fondo: #ffe6e6, color borde: #c0392b
parrafo[0].style.color = "#e74c3c";
parrafo[0].style.backgroundColor = "#ffe6e6";
parrafo[0].style.borderColor = "#c0392b";

// Parrafo 2: color fuente verde #2ecc71, color de fondo: #eaffea, color borde: #27ea60
parrafo[1].style.color = "#2ecc71";
parrafo[1].style.backgroundColor = "#eaffea";
parrafo[1].style.borderColor = "#27ea60";

// Parrafo 3: color fuente azul #3498db color de fondo: #e6f2ff, color borde: #2980b9
parrafo[2].style.color = "#3498db";
parrafo[2].style.backgroundColor = "#e6f2ff";
parrafo[2].style.borderColor = "#2980b9";
