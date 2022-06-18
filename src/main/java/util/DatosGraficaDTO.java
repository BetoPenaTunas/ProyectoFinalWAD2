package util;


import java.io.*;


public class DatosGraficaDTO implements Serializable{
    
    private String idal;
    private String producto;
    private int cantidad;
    private String tipo;
    private int cantidadTotalTipo;
    
    @Override
    public String toString(){
        return "\n\n--------------------------------------------------------------"+
                "\nId Alimento: "+idal+
                "\nProducto: "+producto+
                "\nCantidad: "+cantidad+
                "\n--------------------------------------------------------------";
    }

    public String getIdal() {
        return idal;
    }

    public void setIdal(String idal) {
        this.idal = idal;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getCantidadTotalTipo() {
        return cantidadTotalTipo;
    }

    public void setCantidadTotalTipo(int cantidadTotalTipo) {
        this.cantidadTotalTipo = cantidadTotalTipo;
    }
    
    
    
}
