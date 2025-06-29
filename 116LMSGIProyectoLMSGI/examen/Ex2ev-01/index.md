# Parte del examen Examen - Fecha: 21 de marzo de 2023 

## PREGUNTA 1. Se pide crear un esquema(01.xsd) para validar archivos XML, por ejemplo 01.xml, teniendo en cuenta las siguientes reglas: 

El elemento raíz es productosfinancieros. Dentro de él puede haber uno o más elementos producto. 

Un producto puede ser de tres tipos: bono, futuro y acciones. 

Todos los productos tienen siempre un elemento hijo llamado beneficiario que puede ser un número de dos decimales (positivo o negativo). 

Todo bono puede tener dentro un elemento llamado valoractual que contiene un valor decimal que puede ser positivo o negativo y tener o no decimales. El elemento valoractual deberá llevar dentro un atributo llamado moneda que solo puede tomar los valores dolares, euros o yenes. 

Todo futuro tiene un hijo llamado elemento que puede contener dentro cadenas de cualquier tipo. Para saber en qué idioma está la cadena se usa el atributo llamado idioma que indica el idioma en que esta escrito la cadena. 

Las acciones siempre tienen un elemento empresa que indica el nombre de la empresa y un atributo llamado país que indica de donde es la empresa. De momento queremos limitarnos a los países: usa, alemania, japon y espana. 

Recuérdese que siempre que no nos digan nada, se supone que un elemento o atributo es obligatorio. Si algo es optativo nos dirán «puede tener dentro», «puede contener», «puede aparecer», etc… 

 

## PREGUNTA 2.- Crear un DTD, 02.dtd, que permita verificar el fichero 02.xml. Las reglas son las siguientes: 

- El elemento raíz es inventario. 

- Dentro de inventario debe haber un elemento objeto que lleva dentro una mesa o un ordenador. Todo objeto puede llevar un código que consta de dos letras y cuatro dígitos. Las letras podrían ser tanto mayúsculas como minúsculas. 

- Dentro de mesa puede haber (o no) un primer elemento tipo. Después debe haber un elemento localizacion. 

- Dentro de ordenador los 2 primeros elementos son optativos y deben aparecer en el siguiente orden. 

  * Primero un elemento procesador que puede llevar un atributo fabricante, sus posibles valores son Intel o AMD, por defecto Intel. 

  * Segundo un elemento memoria que debe llevar obligatoriamente un atributo unidad, con valor fijo Gb. 

  * Tercero un elemento discoduro que debe llevar un atributo tamano, sus posibles valores son Tb, Gb y Mb, siendo por defecto Gb. 

## PREGUNTA 3. Dado el archivo 03.xml que guarda los libros de una librería, comprados y pendientes de recibir. Se pide realizar las siguientes consultas Xpath: 

1. Lista los autores de los libros en inglés y el nombre del autor comience por la letra P. 


2. Titulo de los libros comprados y los pendientes de recibir 


3. Título de los libros cuyo precio es mayor que el último libro 


4. Título de los libros con más de un autor. 


http://xpather.com/Ca6gh9bX 
