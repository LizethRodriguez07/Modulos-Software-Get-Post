/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

public class producto {
int idproducto;
    private String Cantidad;
    private String Marca;
    private String Talla;
    private String Descripcion;
    private String precio;    

public producto(){ }

   public int getIdProducto(){
        return idproducto;
    }
    
    public void setIdProducto(int idproducto){
        this.idproducto = idproducto;
    }
    
    public String getCantidad(){
        return Cantidad;
    }
    
    public void setCantidad(String Cantidad) {
        this.Cantidad = Cantidad;
    }
    
    public String getMarca(){
        return Marca;
    }
    
    public void setMarca (String Marca) {
        this.Marca = Marca;
    }
    
    public String getTalla(){
        return Talla;
    }
    
    public void setTalla (String Talla) {
        this.Talla = Talla;
    }
    
    public String getDescripcion(){
        return Descripcion;
    }
    
    public void setDescripcion (String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    public String getPrecio(){
        return precio;
    }
    
    public void setPrecio (String precio) {
        this.precio = precio;
    } 
}
