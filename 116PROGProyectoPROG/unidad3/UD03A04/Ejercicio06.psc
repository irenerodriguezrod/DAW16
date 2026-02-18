Inicio
    Definir numero como entero
    Escribir "Ingrese un número entero positivo: "
    Leer numero
    Si esHyperpar(numero) Entonces
        Escribir numero + " es un número hyperpar."
    Sino
        Escribir numero + " no es un número hyperpar."
    FinSi
Fin

Función esHyperpar(numero)
    Mientras numero > 0 Hacer
        digito = numero % 10
        Si digito % 2 != 0 Entonces
            Retornar falso
        FinSi
        numero = numero / 10
    FinMientras
    Retornar verdadero
FinFunción