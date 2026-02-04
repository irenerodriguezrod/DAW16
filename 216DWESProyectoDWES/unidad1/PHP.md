# PHP - Iniciación al lenguaje

## Sintaxis básica y estructura general de un programa en entorno servidor.
- PHP es un lenguaje de programación interpretado que se ejecuta en el servidor web antes de enviar el contenido al cliente (navegador).
- Su código se escribe entre etiquetas especiales dentro de un archivo con extensión .php.
- Todo el código debe ir entre <?php y ?>. Las instrucciones terminan con punto y coma(;).

## Comentarios dentro del código

``// Esto es un comentario de una línea``

``# Esto es otro comentario de una línea. ``

`` /* Esto es un comentario de varias líneas */ ``

## Significado de ‘Entorno servidor’ y ejecución de un programa PHP.

### Significado de ‘Entorno servidor’
Para ejecutar programas del lado del servidor (como en este caso PHP), no se ejecuta directamente en el navegador, sino en un servidor web. El servidor interpreta el código (PHP, Python, Node.js, 
etc.) y envía al navegador solo el resultado (HTML, texto, JSON, etc.). Para entenderlo mejor, vamos a poner un ejemplo conceptual.
Un usuario accede a http://localhost/ejemplo.php , el servidor (Puede ser Apache o Nginx) ejecuta el código PHP y lo que nos devuelve el navegador es la salida (por ejemplo, ‘Hola mundo’ como en el ejemplo mostrado anteriormente)

### Ejecución de un programa PHP.

#### XAMPP.
Para ello tendremos que seguir una serie de pasos.
1. Instalación de un paquete con servidor web + PHP.
    - En Windows → XAMPP
    - En Linux → LAMP (Linux + Apache + MySQL + PHP)
2. Guardar el programa.
    - Crear el archivo con extensión .php (por ejemplo ejemplo.php)
    - Guardarlo en la carpeta (C:\xampp\htdocs\). En XAMPP, esa carpeta es el ‘sitio web local’
3. Escribir código.
4. Iniciar el servidor.
    - Abre 'XAMPP Control Panel' y haz *click* en `Start`.
5. Ejecutar el programa.
    - Abrimos el navegador y escribimos http://localhost/ejemplo.php (En caso de que el archivo tenga otro nombre, pues le pondremos el que tenga en ese caso)
    - En la pantalla observaremos el contenido que habíamos escrito

#### Servidor embebido de PHP (Sin necesidad de instalar XAMPP) 
Primero tendremos que comprobar que PHP está instalado en el sistema. En PowerShell ejecutamos el siguiente comando para ver la versión que tenemos.
``php -v``

En caso de tener ya instalado PHP, se puede ejecutar el programa directamente desde el terminal. 
Para ello tendremos que seguir los siguientes pasos. 
1. Abrimos la carpeta en la que se encuentra el archivo PHP.
2. En la terminal o consola escribiremos el siguiente comando.
    - ``php -S localhost:8000``
        - ``php`` llama al interprete de PHP
        - ``-S`` indica que se quiere iniciar un servidor embebido de PHP (Esto se puede hacer desde la versión 5.4.)
        - ``localhost:8000`` define la dirección y el puerto donde se ejecutará el servidor. En este caso:
            -  ``localhost`` significa que solo estará accesible desde tu máquina.
            - ``8000`` es el puerto donde escuchará el servidor.

    - Accedemos desde el navegador (``http://localhost:8000/ejemplo.php``)