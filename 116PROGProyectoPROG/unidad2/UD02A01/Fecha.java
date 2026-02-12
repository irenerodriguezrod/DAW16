
/**
 * Implementa en lenguaje de programación Java la clase Fecha representada en el
 * siguiente diagrama de clases UML.
 * 
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @version 1.0
 * @since 12 de febrero 2026
 */

// UD02A01. Ejercicio 2

public class Fecha { // Se declara con el título de la tabla que nos dan
    // Atributos de la clase
    private int anyo;
    private int mes;
    private int dia;

    // Declaración de los métodos
    public Fecha(int anyo, int mes, int dia) {
        if (esFechaValida(dia, mes, anyo)) {
            this.anyo = anyo;
            this.mes = mes;
            this.dia = dia;
        } else {
            this.anyo = 2000;
            this.mes = 1;
            this.dia = 1;
        }
    }

    // Métodos GET
    public int getAnyo() {
        return this.anyo;
    }

    public int getMes() {
        return this.mes;
    }

    public int getDia() {
        return this.dia;
    }

    // Métodos SET
    public void setAnyo(int anyo) {
        if (esFechaValida(this.dia, this.mes, anyo)) {
            this.anyo = anyo;
        }
    }

    public void setMes(int mes) {
        if (esFechaValida(this.dia, mes, this.anyo)) {
            this.mes = mes;
        }
    }

    public void setDia(int dia) {
        if (esFechaValida(dia, this.mes, this.anyo)) {
            this.dia = dia;
        }
    }

    // Método toString
    public String toString() {
        return String.format("%d - %d - %d", anyo, mes, dia);
    }

    private static int getDiasMes(int mes, int anyo) {
        if (mes == 2) {
            // Comprobación de año bisiesto
            return (esAnioBisiesto(anyo)) ? 29 : 28;
        }
        return switch (mes) {
            case 1, 3, 5, 7, 8, 10, 12 -> 31;
            case 4, 6, 9, 11 -> 30;
            default -> 0; // Equivalente de break en la anterior versión de Java
        };
    }

    private static boolean esFechaValida(int dia, int mes, int anyo) {
        return (anyo > 1586 && mes >= 1 && mes <= 12 && dia >= 1 && dia <= getDiasMes(mes, anyo));
    }

    private static boolean esAnioBisiesto(int anyo) {
        return (anyo % 4 == 0 && anyo % 100 != 0) || (anyo % 400 == 0);
    }
}
