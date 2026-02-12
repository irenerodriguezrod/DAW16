/**
 * Implementa en lenguaje de programación Java la clase Rectangulo representada en el
 * siguiente diagrama de clases UML.
 * 
 * @author Irene RODRIGUEZ RODRIGUEZ
 * @version 1.0
 * @since 12 de febrero 2026
 */

//UD02A01. Ejercicio 1

public class Rectangulo 
{
    // atributos de la clase
    private float ancho;
    private float alto;

      //metodos 
    public Rectangulo(float ancho,float alto) {
        this.ancho=ancho;
        this.alto=alto;
    }
    
    //metodo GET: devuelve datos
    public float getAncho(){
        return this.ancho;
    }
  
    public float getAlto() {
        return this.alto;
    }
    
    //metodo SET: siempre son void
    public void setAncho(float ancho) {
        this.ancho=ancho;
    }
    
    public void setAlto(float alto) {
        this.alto=alto;
    }
    
    //declaracion metodos
    public float calcularArea(){
        float area;
        
        area=ancho*alto;
        
        return area; //no se pone this, solo return porque es lo que se quiere obtener
    }
    
    public float calcularPerimetro() {
        float perimetro;
        
        perimetro=2*ancho+2*alto;
        
        return perimetro; // tambien se puede poner return 2*ancho+2*alto;
    }
}
