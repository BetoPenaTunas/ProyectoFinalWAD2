package modelo.entidades;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "Cliente")
public class Cliente implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "nombre", length = 20, nullable = false)
    private String nombre;
    
    @Column(name = "apellidos", length = 20, nullable = false)
    private String apellidos;
    
    @Column(name = "correo", length = 30, nullable = false)
    private String correo;

    @Column(name = "clave", length = 30, nullable = false)
    private String clave;
    
    @Column(name = "sexo", length = 2, nullable = false)
    private String sexo;
    
    @Column(name = "escuela", length = 50, nullable = false)
    private String escuela;
    
    @Column(name = "dinero", nullable = false)
    private float dinero;
    
    @Column(name = "numero", length = 20, nullable = false)
    private String numero;
    
    @Column(name = "edad", length = 3, nullable = false)
    private int edad;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEscuela() {
        return escuela;
    }

    public void setEscuela(String escuela) {
        this.escuela = escuela;
    }

    public float getDinero() {
        return dinero;
    }

    public void setDinero(float dinero) {
        this.dinero = dinero;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "\n \nCliente{" + "id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", correo=" + correo + ", clave=" + clave + ", sexo=" + sexo + ", escuela=" + escuela + ", dinero=" + dinero + ", numero=" + numero + ", edad=" + edad + '}';
    }
    
    
    
}
