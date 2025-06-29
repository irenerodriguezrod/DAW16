(: 8. Uso de variables expresiones en un for $tema in (lista de valores), $y in (lista de valores). Para indicar la lista de valor de valorinicial to valorfinal, por ejemplo 1 to 100. Generar automáticamente la siguiente página web (08.html) :)

<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UNIDAD 6.8. - Irene Rodriguez</title>
</head>
<body>
      {
(: Otra manera de hacer cada uno de los enlaces sería la siguiente
 : utilizando concat
 : <a href="{ concat($tema, "/", $y, ".html")}"></a>
 ::)
for $tema in 1 to 7, $y in 1 to 3
return
        <div>
          <a href="{ concat($tema, '/', $y, '.html')}">Tema { $tema}: Ejercicio
    { $y}</a>
        </div>
    }
</body>
</html>