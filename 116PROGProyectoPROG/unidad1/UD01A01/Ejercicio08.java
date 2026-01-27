/**
 * @file Ejercicio08.java
 * @description Realiza el pseudocódigo y la codificación en lenguaje de
 *              programación Java de una algoritmo que declare la constante IVA,
 *              asignándole el valor 21.
 *              Declara la variable precioBruto, asignándole un valor
 *              cualquiera. Mostrará por
 *              pantalla el precio neto (sin IVA) y el IVA de un producto cuyo
 *              precio bruto es el asignado a la variable precioBruto.
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @date 28/01/2026
 */

public class Ejercicio08 {
    public static void main(String[] args) {
        final double IVA = 21;
        double precioBruto = 100.0;
        double iva = precioBruto * IVA / 100;
        double precioNeto = precioBruto - iva;
        System.out.printf("Precio bruto: %.2f\nIVA: %.2f\nPrecio neto: %.2f", precioBruto, iva, precioNeto);
    }
}
