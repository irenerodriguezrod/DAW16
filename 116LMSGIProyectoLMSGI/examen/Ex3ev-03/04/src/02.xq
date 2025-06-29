<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Simulacro examen - Irene Rodríguez Rodríguez</title>
    <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<header>
  <img src="images/logo.jpg" alt="logo"/>
  <h1>Distribución de software {@tipo}</h1>
</header>
<main>
  <ul>
    {
      for $x in doc("distribucionSoftware")/software-libre/distribuciones/distribucion
      return <li><a href="{$x/web/text()}">{$x/nombre}</a></li> (: se tiene que poner entre llaves para que muestre el valor:)
    }
  </ul>
</main>
</body>
</html>