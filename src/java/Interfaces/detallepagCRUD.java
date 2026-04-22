package Interfaces;

import Modelos.detallepag;
import java.util.List;

public interface detallepagCRUD {
    //define la lista obteniendo objetos de los productos
 public List<detallepag> listardetallepag();
 public boolean agregar (detallepag dpg);
 public detallepag listarundetallepag(int idPago);
 public boolean actualizar (detallepag dpg);
 public boolean borrar(int idPago);
    //Metodo para consultar los datos  
    
}
