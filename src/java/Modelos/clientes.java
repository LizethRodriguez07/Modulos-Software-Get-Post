package Modelos;

public class clientes {
int id;
    private String nombre;
    private String apellido;
    private String cedula;
    private String celular;
    private String email;
    private String departamento;
    private String municipio;
    private String direccion;    

public clientes(){ }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApellido(){
        return apellido;
    }
    
    public void setApellido (String apellido) {
        this.apellido = apellido;
    }
    
    public String getCedula(){
        return cedula;
    }
    
    public void setCedula (String cedula) {
        this.cedula = cedula;
    }
    
    public String getCelular(){
        return celular;
    }
    
    public void setCelular (String celular) {
        this.celular = celular;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail (String email) {
        this.email = email;
    }
    
    public String getDepartamento(){
        return departamento;
    }
    
    public void setDepartamento (String departamento) {
        this.departamento = departamento;
    }
    
    public String getMunicipio(){
        return municipio;
    }
    
    public void setMunicipio (String municipio) {
        this.municipio = municipio;
    }
    
    public String getDireccion(){
        return direccion;
    }
    
    public void setDireccion (String direccion) {
        this.direccion = direccion;
    }
}