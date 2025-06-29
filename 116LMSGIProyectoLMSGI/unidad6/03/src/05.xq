(: 5. Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece
distintos colores el título en función de la categoría. :)

<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UNIDAD 6.5. - Irene Rodriguez</title>
</head>
<body>
    <h1>BOOKSTORE</h1>
    <table>
      <tr>
        <th>Título</th>
        <th>Categoría</th>
      </tr>
      {
        for $x in /bookstore/book
        return <tr>
          <td>{data($x/title)}</td>
          <td>{data($x/@category)}</td>
      </tr>
      }
    </table>
    
    <h2>Listado por categoría</h2>
    
    <ul>(: los colores se definen en el CSS dependiendo de la categoría que tengan cada uno. Los comentarios no se pueden poner dentro del bucle FOR porque sino los escribe al mostrar el resultado :)
      {
        for $x in bookstore/book
        return <li class= "{data($x/@category)}"> 
                  {data($x/title)}
               </li>
      }
    </ul>
</body>
</html>