/*  =========================================================
    Actividad jQuery — script.js
    ---------------------------------------------------------
    Completa cada sección siguiendo las instrucciones.
    NO modifiques los comentarios de sección.
    ========================================================= */

$(document).ready(function () {

   /* =====================================================
      EJERCICIO 1 — Manipulación de imagen (#multimedia)
      ===================================================== */

   // 1.3) Doble clic en #resizeImg → duplicar tamaño de #multimedia.
   //      - Primer doble clic: se duplica ancho y alto.
   //      - Segundo doble clic: vuelve al tamaño original.
   //
   // --- TU CÓDIGO AQUÍ ---
   let ampliada = false;

   let img = document.getElementById("multimedia");

   let anchoOriginal = img.naturalWidth;
   let altoOriginal = img.naturalHeight;

   $("#resizeImg").dblclick(function () {
      if (!ampliada) {
         $("#multimedia").css({
            width: anchoOriginal * 2,
            height: altoOriginal * 2
         });
         ampliada = true;
      } else {
         $("#multimedia").css({
            width: anchoOriginal,
            height: altoOriginal
         });
         ampliada = false;
      }
   });

   // 2.3) Hover en #setBorderRed:
   //      - mouseenter → borde rojo 3px a #multimedia
   //      - mouseleave → eliminar borde
   //
   // --- TU CÓDIGO AQUÍ ---
   $("#setBorderRed").hover(
      function () {
         $("#multimedia").css("border", "3px solid red");
      },
      function () {
         $("#multimedia").css("border", "none");
      }
   );

   // 3.3) Clic en #fadeImg:
   //      - Primera vez → fadeOut de #multimedia
   //      - Segunda vez → fadeIn de #multimedia
   //
   // --- TU CÓDIGO AQUÍ ---
   let visible = true;

   $("#fadeImg").click(function () {
      if (visible) {
         $("#multimedia").fadeOut();
         visible = false;
      } else {
         $("#multimedia").fadeIn();
         visible = true;
      }
   });


   /* =====================================================
      EJERCICIO 2 — Añadir y eliminar elementos
      ===================================================== */

   // 2.1) Clic en #addCaption:
   //      - Lee el texto de #captionText.
   //      - Añade un <p> con ese texto dentro de #captions.
   //      - Al hacer clic sobre cualquier <p> insertado, se elimina.
   //
   // --- TU CÓDIGO AQUÍ ---
   $("#addCaption").click(function () {
      let texto = $("#captionText").val().trim();

      if (texto !== "") {
         let nuevoParrafo = $("<p></p>").text(texto);

         $("#captions").append(nuevoParrafo);

         $("#captionText").val("");
      }
   });

   // eliminar párrafos
   $("#captions").on("click", "p", function () {
      $(this).remove();
   });


   /* =====================================================
      EJERCICIO 3 — Slider con Slick
      ===================================================== */

   // 3.2) Convierte #gallery en un slider Slick:
   //      - slidesToShow: 3
   //      - slidesToScroll: 1
   //      - autoplay cada 2 segundos
   //
   // 3.3) Botones personalizados "NEXT" y "PREV"
   //
   // 3.4) Responsive: ancho < 600px →
   //      - slidesToShow: 1
   //      - Ocultar NEXT/PREV
   //      - Activar dots
   //      - Desactivar autoplay
   //
   // --- TU CÓDIGO AQUÍ ---
   //botones
   $("#gallery").before(`
    <button class="slider-btn" id="btnPrev">PREV</button>
    <button class="slider-btn" id="btnNext">NEXT</button>
`);

   // inicializar
   $("#gallery").slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 2000,
      pauseOnHover: false,
      pauseOnFocus: false,
      arrows: false,
      responsive: [
         {
            breakpoint: 600,
            settings: {
               slidesToShow: 1,
               autoplay: false,
               dots: true
            }
         }
      ]
   });

   // botones
   $("#btnNext").click(function () {
      $("#gallery").slick("slickNext");
   });

   $("#btnPrev").click(function () {
      $("#gallery").slick("slickPrev");
   });


   //ocultar/mostrar botones según tamaño
   function controlarBotones() {
      if ($(window).width() < 600) {
         $("#btnPrev, #btnNext").hide();
      } else {
         $("#btnPrev, #btnNext").show();
      }
   }

   // ejecutar al cargar
   controlarBotones();

   // ejecutar al redimensionar
   $(window).resize(controlarBotones);
});
