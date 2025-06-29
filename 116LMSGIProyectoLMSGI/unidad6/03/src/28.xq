(: 28. Mostrar los títulos en una tabla de HTML. :)
<html>
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>UD06.3- 28. Lista de Títulos</title>
</head>
<body>
  <h1>Listado de titulos</h1>
  <table border="1">
    <tr>
      <th>Título</th>
    </tr>
    {
      for $x in /bookstore/book
      let $titulo := $x/title
      return
        <tr>
          <td>{ $titulo/text() }</td>
        </tr>
    }
  </table>
</body>
<footer>
        <p>2024-25 IES LOS SAUCES. &#169; Todos los derechos reservados. <a
                href="/116LMSGIProyectoLMSGI/index.html">Irene Rodríguez Rodríguez </a></p>
        <p>Fecha de actualización: <time datetime="2025-05-19">19 de mayo de 2025</time></p>
    </footer>
</html>
