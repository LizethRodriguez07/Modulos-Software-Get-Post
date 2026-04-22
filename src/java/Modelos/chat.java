package Modelos;

public class chat {
  int idChat;
    private String clienteChat;
    private String Mensajeria;
    private String estadoChat;
  
public chat (){ }
    public int getIdChat(){
        return idChat;
    }
    
    public void setIdChat(int idChat){
        this.idChat = idChat;
    }
    
    public String getClienteChat(){
        return clienteChat;
    }
    
    public void setClienteChat(String clienteChat) {
        this.clienteChat = clienteChat;
    }
    
    public String getMensajeria(){
        return Mensajeria;
    }
    
    public void setMensajeria (String Mensajeria) {
        this.Mensajeria = Mensajeria;
}    
    
    public String getEstadoChat(){
        return estadoChat;
    }
    
    public void setEstadoChat(String estadoChat) {
        this.estadoChat = estadoChat;
    }    
}
