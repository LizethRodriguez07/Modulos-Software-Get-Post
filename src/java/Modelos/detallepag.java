package Modelos;

public class detallepag {
    int idPago;
    private String idCliente;
    private String idPedido;
    private String fechRecb;
    private String tcanPago;
    private String estadoPago;    

public detallepag(){ }

   public int getIdPago(){
        return idPago;
    }
    
    public void setIdPago(int idPago){
        this.idPago = idPago;
    }
    
    public String getIdCliente(){
        return idCliente;
    }
    
    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }
    public String getIdPedido(){
        return idPedido;
    }
    
    public void setIdPedido(String idPedido) {
        this.idPedido = idPedido;
    }
    
    public String getFechRecb(){
        return fechRecb;
    }
    
    public void setFechRecb (String fechRecb) {
        this.fechRecb = fechRecb;
    }
    
    public String getTcanPago(){
        return tcanPago;
    }
    
    public void setTcanPago (String tcanPago) {
        this.tcanPago = tcanPago;
    }
    
    public String getEstadoPago(){
        return estadoPago;
    }
    
    public void setEstadoPago(String estadoPago) {
        this.estadoPago = estadoPago;
    }
}