package Modelos;

public class pedidos {
 int idP;
    private String fechaPedido;
    private String nomCliente;
    private String totalPg;
    private String medioPago;
    private String descriPcion;    
    private String teleFono; 
    private String direCcion; 
    private String selecEstado; 

public pedidos(){ }
    public int getIdP(){
        return idP;
    }
    
    public void setIdP(int idP){
        this.idP = idP;
    }
    
    public String getFechaPedido(){
        return fechaPedido;
    }
    
    public void setFechaPedido(String fechaPedido) {
        this.fechaPedido = fechaPedido;
    }
    
    public String getNomCliente(){
        return nomCliente;
    }
    
    public void setNomCliente(String nomCliente) {
        this.nomCliente = nomCliente;
    }
    
    public String getTotalPg(){
        return totalPg;
    }
    
    public void setTotalPg (String totalPg) {
        this.totalPg = totalPg;
    }
    
    public String getMedioPago(){
        return medioPago;
    }
    
    public void setMedioPago(String medioPago) {
        this.medioPago = medioPago;
    }
    
    public String getDescriPcion(){
        return descriPcion;
    }
    
    public void setDescriPcion(String descriPcion) {
        this.descriPcion = descriPcion;
    }
    
    public String getTeleFono(){
        return teleFono;
    }
    
    public void setTeleFono(String teleFono) {
        this.teleFono = teleFono;
    }
    
    public String getDireCcion(){
        return direCcion;
    }
    
    public void setDireCcion(String direCcion) {
        this.direCcion = direCcion;
    }
    
    public String getSelecEstado(){
        return selecEstado;
    }
    
    public void setSelecEstado(String selecEstado) {
        this.selecEstado = selecEstado;
    }
}
