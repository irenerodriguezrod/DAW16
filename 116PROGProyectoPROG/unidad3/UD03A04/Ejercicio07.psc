PSEUDOCÓDIGO - Máximo Común Divisor (Algoritmo de Euclides)
==========================================================

Inicio
    Definir a, b como entero
    
    Escribir "Ingrese el primer número entero positivo (a): "
    Leer a
    
    Escribir "Ingrese el segundo número entero positivo (b): "
    Leer b
    
    mcd = calcularMCD(a, b)
    
    Escribir "El máximo común divisor de " + a + " y " + b + " es: " + mcd
Fin

Función calcularMCD(a, b)
    // Si a es menor que b se intercambian los valores
    Si a < b Entonces
        temp = a
        a = b
        b = temp
    FinSi
    
    // Algoritmo de Euclides
    Mientras b != 0 Hacer
        // Sea r el resto de dividir a entre b
        r = a % b
        
        // Si r=0 entonces mcd(a,b)=b sino mcd(a,b)=mcd(b,r)
        a = b
        b = r
    FinMientras
    
    Retornar a
FinFunción