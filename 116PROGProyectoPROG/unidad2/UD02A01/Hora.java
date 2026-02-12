
/**
 * Implementa en lenguaje de programación Java la clase Hora representada en el
 * siguiente diagrama de clases UML.
 * 
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @version 1.0
 * @since 12 de febrero 2026
 */

// UD02A01. Ejercicio 3

public class Hora {
    // atributos de la clase
    private int horas;
    private int minutos;
    private int segundos;

    // metodos

    // se inicializa en 0, por eso se declara de esta manera.
    public Hora() {
    }

    public Hora(int horas) {
        this.horas = horas;
    }

    // declaracion de los metodos
    public Hora(int horas, int minutos, int segundos) {
        this.horas = horas;
        this.minutos = minutos;
        this.segundos = segundos;
    }

    // metodo get
    public int getHoras() {
        return horas;
    }

    public int getMinutos() {
        return minutos;
    }

    public int getSegundos() {
        return segundos;
    }

    // metodo set
    public void setHoras(int horas) {
        this.horas = horas;
    }

    public void setMinutos(int minutos) {
        this.minutos = minutos;
    }

    public void setSegundos(int segundos) {
        this.segundos = segundos;
    }

    // declarar el método convertirASegundos
    public int convertirASegundos() {
        int segundos;

        segundos = this.horas * 3600 + this.minutos * 60 + this.segundos;

        return segundos;

        // OTRA FORMA DE ESCRIBIR EL CODIGO. Se escribiría sólo la siguiente línea de
        // código y nos ahorraríamos el int y la
        // declaración de la operación
        // return this.horas*3600+this.minutos*60+this.segundos;
    }

    // declarar metodo sumarSegundos
    public Hora sumarSegundos(int segundos) {
        Hora horaNueva;
        int totalSegundos;
        int h, m, s;

        totalSegundos = convertirASegundos() + segundos;

        h = totalSegundos / 3600;
        totalSegundos %= 3600;
        m = totalSegundos / 60;
        s = totalSegundos % 60;

        // se crea la variable con un nuevo constructor
        horaNueva = new Hora(h, m, s);

        return horaNueva;
    }

    // declarar metodo compareTo que devuelve la diferencia entre esta hora y la que
    // se recibe como parámetro
    public int compareTo(Hora otraHora) {
        int diferenciaSegundos;

        diferenciaSegundos = this.convertirASegundos() - otraHora.convertirASegundos();

        return diferenciaSegundos;
    }

    // declarar metodo toString
    public String toString() {
        String salida;

        // "%02d:%02d:%02d" se refiere a un numero entero, si fuera un real una F. Sirve
        // para mostrar dos dígitos que luego se declaran
        salida = String.format("%02d:%02d:%02d", horas, minutos, segundos);

        return salida;
    }

}
