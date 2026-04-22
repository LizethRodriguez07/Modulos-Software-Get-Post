package Interfaces;

import Modelos.pedidos;
import java.util.List;

public interface pedidosCRUD {
public List<pedidos> listarpedidos();
 public boolean agregar (pedidos pedid);
 public pedidos listarunpedidos(int idP);
 public boolean actualizar (pedidos pedid);
 public boolean borrar(int idP);
    //Metodo para consultar los datos    
}
